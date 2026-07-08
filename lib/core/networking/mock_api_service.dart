import 'package:banx/core/networking/http_client.dart';
import 'package:banx/core/networking/typedefs.dart';
import 'package:dio/dio.dart';

class MockApiService implements HTTPClient {
  // state management variables to simulate step-by-step onboarding flow
  static bool _hasPassword = false;
  static bool _kycCompleted = false;
  static bool _addressAdded = false;
  static bool _cardOrdered = false;
  static bool _needSignup = false;
  static bool _identityVerified = false;

  static void resetState() {
    _hasPassword = false;
    _kycCompleted = false;
    _addressAdded = false;
    _cardOrdered = false;
    _needSignup = false;
    _identityVerified = false;
  }

  Map<String, dynamic> _mockListResponse(List<dynamic> content) {
    return {
      "totalPages": 1,
      "totalElements": content.length,
      "pageable": {
        "unpaged": false,
        "pageSize": 10,
        "paged": true,
        "pageNumber": 0,
        "offset": 0,
        "sort": {
          "empty": true,
          "unsorted": true,
          "sorted": false
        }
      },
      "first": true,
      "last": true,
      "numberOfElements": content.length,
      "size": 10,
      "content": content,
      "number": 0,
      "sort": {
        "empty": true,
        "unsorted": true,
        "sorted": false
      },
      "empty": content.isEmpty
    };
  }

  Future<JSON> _handleRequest(String method, String endpoint, dynamic data) async {
    // Add a simulated network delay to make UI transitions feel natural
    await Future.delayed(const Duration(milliseconds: 600));

    // Simple debug prints
    // ignore: avoid_print
    print("[MockAPI] $method -> $endpoint");
    if (data != null) {
      // ignore: avoid_print
      print("[MockAPI] Payload: $data");
    }

    final normalizedPath = endpoint.toLowerCase().replaceAll('//', '/');

    // 1. Auth Endpoint Matches
    if (normalizedPath.contains('/otp/send')) {
      final String phone = (data is Map) ? (data['phoneNumber'] ?? '') : '';
      _needSignup = (phone == '09123456789'); // trigger signup flow internally
      return {
        "needSignup": false, // Force flow: Phone -> OTP -> Identity
        "needReferralCode": false,
        "expiresIn": 120,
        "codeLength": 5
      };
    }

    if (normalizedPath.contains('/otp/verify')) {
      return {
        "accessToken": "mock_access_token",
        "refreshToken": "mock_refresh_token"
      };
    }

    if (normalizedPath.contains('/auth/password')) {
      if (method == 'POST') {
        _hasPassword = true;
        return {
          "accessToken": "mock_access_token",
          "refreshToken": "mock_refresh_token"
        };
      } else {
        // PUT (set password)
        _hasPassword = true;
        return {};
      }
    }

    if (normalizedPath.contains('/otp/signup')) {
      _identityVerified = true;
      return {
        "expiresIn": 120,
        "codeLength": 5
      };
    }

    if (normalizedPath.contains('/otp/birthdate')) {
      _identityVerified = true;
      return {
        "expiresIn": 120,
        "codeLength": 5
      };
    }

    if (normalizedPath.contains('/auth/refresh')) {
      return {
        "accessToken": "mock_access_token",
        "refreshToken": "mock_refresh_token"
      };
    }

    // 2. Profile Endpoint Matches
    if (normalizedPath.contains('/profile')) {
      String deeplink = '/main/0';
      String title = 'خانه';

      if (!_identityVerified) {
        deeplink = '/identity/09123456789/false';
        title = 'اطلاعات هویتی';
      } else if (!_hasPassword) {
        deeplink = '/create_password';
        title = 'تعیین رمز عبور';
      } else if (!_kycCompleted) {
        deeplink = '/kyc_status';
        title = 'احراز هویت';
      } else if (!_cardOrdered) {
        deeplink = '/select_card';
        title = 'درخواست کارت';
      }

      return {
        "firstName": _needSignup ? "سحر" : "امیر",
        "lastName": _needSignup ? "رضایی" : "احمدی",
        "firstNameEN": _needSignup ? "Sahar" : "Amir",
        "lastNameEN": _needSignup ? "Rezaei" : "Ahmadi",
        "phoneNumber": "09121111111",
        "username": _needSignup ? "sahar_rezaei" : "amir_ahmadi",
        "nationalID": "0012345678",
        "photoUrl": null,
        "hasPassword": _hasPassword,
        "nfcActive": false,
        "profileStatus": _cardOrdered ? "COMPLETED" : (_kycCompleted ? "KYC_DONE" : (_hasPassword ? "PASSWORD_SET" : "NEW")),
        "routingButton": {
          "deeplink": deeplink,
          "title": title
        },
        "kycLevel": _cardOrdered ? "2" : (_kycCompleted ? "1" : "0")
      };
    }

    // 3. KYC Endpoint Matches
    if (normalizedPath.contains('/kyc/video') || normalizedPath.contains('/kyc/image')) {
      _kycCompleted = true;
      return {};
    }

    if (normalizedPath.endsWith('/kyc')) {
      String deeplink = '/face_detection';
      String title = 'شروع احراز هویت ویدیویی';
      String faceStatus = 'PENDING';
      String faceDesc = 'انجام نشده';
      String sayahStatus = 'PENDING';
      String sayahDesc = 'در انتظار احراز هویت';

      if (_kycCompleted) {
        deeplink = '/select_card';
        title = 'درخواست کارت';
        faceStatus = 'SUCCEEDED';
        faceDesc = 'تایید شده';
        sayahStatus = 'SUCCEEDED';
        sayahDesc = 'تایید شده';
      }

      return {
        "routingButton": {
          "deeplink": deeplink,
          "title": title
        },
        "state": {
          "identityStatus": {
            "status": "SUCCEEDED",
            "title": "اطلاعات هویتی",
            "description": "تایید شده"
          },
          "phoneStatus": {
            "status": "SUCCEEDED",
            "title": "مالکیت شماره همراه",
            "description": "تایید شده"
          },
          "faceStatus": {
            "status": faceStatus,
            "title": "احراز هویت ویدیویی",
            "description": faceDesc
          },
          "sayahStatus": {
            "status": sayahStatus,
            "title": "استعلام سامانه سیاح",
            "description": sayahDesc
          }
        }
      };
    }

    // 4. Address Endpoint Matches
    if (normalizedPath.contains('/address/inquiry')) {
      return {
        "address": {
          "id": 1,
          "postalCode": (data is Map && data.containsKey('postalCode')) ? data['postalCode'] : "1411111111",
          "address": "تهران، میدان آزادی، خیابان آزادی، پلاک ۱۲، واحد ۳",
          "street": "خیابان آزادی",
          "plaque": "۱۲",
          "floor": "۳",
          "unit": "۳",
          "houseName": "ساختمان بانک ایکس",
          "region": "آزادی",
          "city": { "id": 1, "name": "تهران" },
          "province": { "id": 1, "name": "تهران" }
        }
      };
    }

    if (normalizedPath.endsWith('/address')) {
      if (method == 'POST') {
        _addressAdded = true;
        return {
          "address": {
            "id": 1,
            "postalCode": "1411111111",
            "address": "تهران، میدان آزادی، خیابان آزادی، پلاک ۱۲، واحد ۳",
            "street": "خیابان آزادی",
            "plaque": "۱۲",
            "floor": "۳",
            "unit": "۳",
            "houseName": "ساختمان بانک ایکس",
            "region": "آزادی",
            "city": { "id": 1, "name": "تهران" },
            "province": { "id": 1, "name": "تهران" }
          }
        };
      } else if (method == 'GET') {
        if (!_addressAdded) {
          return _mockListResponse([]);
        } else {
          return _mockListResponse([
            {
              "id": 1,
              "postalCode": "1411111111",
              "address": "تهران، میدان آزادی، خیابان آزادی، پلاک ۱۲، واحد ۳",
              "street": "خیابان آزادی",
              "plaque": "۱۲",
              "floor": "۳",
              "unit": "۳",
              "houseName": "ساختمان بانک ایکس",
              "region": "آزادی",
              "city": { "id": 1, "name": "تهران" },
              "province": { "id": 1, "name": "تهران" }
            }
          ]);
        }
      } else {
        // PUT
        return {};
      }
    }

    // 5. Card Endpoint Matches
    if (normalizedPath.contains('/card/types')) {
      return {
        "cardTypes": [
          {
            "id": 1,
            "title": "کارت کلاسیک مشکی",
            "description": "کارت بانکی هوشمند با طراحی اختصاصی مشکی",
            "priceLabel": "رایگان",
            "color": "#000000",
            "imageURL": "https://example.com/cards/black.png",
            "price": 0.0
          },
          {
            "id": 2,
            "title": "کارت کلاسیک نقره‌ای",
            "description": "کارت بانکی هوشمند با طراحی اختصاصی نقره‌ای",
            "priceLabel": "رایگان",
            "color": "#C0C0C0",
            "imageURL": "https://example.com/cards/silver.png",
            "price": 0.0
          }
        ]
      };
    }

    if (normalizedPath.contains('/card/shipping-time-slots')) {
      return {
        "cardShippingTimeSlots": [
          { "id": 1, "datetime": "شنبه ۱۴۰۵/۰۴/۱۰ (۹ تا ۱۲)" },
          { "id": 2, "datetime": "شنبه ۱۴۰۵/۰۴/۱۰ (۱۲ تا ۱۵)" },
          { "id": 3, "datetime": "شنبه ۱۴۰۵/۰۴/۱۰ (۱۵ تا ۱۸)" },
          { "id": 4, "datetime": "یکشنبه ۱۴۰۵/۰۴/۱۱ (۹ تا ۱۲)" },
          { "id": 5, "datetime": "یکشنبه ۱۴۰۵/۰۴/۱۱ (۱۲ تا ۱۵)" }
        ]
      };
    }

    if (normalizedPath.contains('/card/orders')) {
      _cardOrdered = true;
      return {};
    }

    // 6. Passkeys Endpoint Matches
    if (normalizedPath.contains('/passkeys/attestation/options')) {
      return {
        "rp": { "name": "Bank X", "id": "bankx.ir" },
        "user": { "id": "dXNlcl9pZA==", "name": "user@bankx.ir", "displayName": "User" },
        "challenge": "Y2hhbGxlbmdlX2RhdGE=",
        "pubKeyCredParams": [
          { "type": "public-key", "alg": -7 },
          { "type": "public-key", "alg": -257 }
        ]
      };
    }

    if (normalizedPath.contains('/passkeys/attestation/result')) {
      return {
        "status": "success",
        "credentialId": "Y3JlZGVudGlhbF9pZA=="
      };
    }

    if (normalizedPath.contains('/passkeys/assertion/options')) {
      return {
        "challenge": "Y2hhbGxlbmdlX2RhdGE=",
        "allowCredentials": [
          { "type": "public-key", "id": "Y3JlZGVudGlhbF9pZA==" }
        ]
      };
    }

    if (normalizedPath.contains('/passkeys/assertion/result')) {
      return {
        "status": "success"
      };
    }

    // Generic fallback or empty response
    return {};
  }

  @override
  Future<T> get<T>({
    required String endpoint,
    JSON? queryParameters,
    required T Function(JSON responseBody) mapper,
  }) async {
    final responseData = await _handleRequest('GET', endpoint, queryParameters);
    return mapper(responseData);
  }

  @override
  Future<T> post<T>({
    required String endpoint,
    Object? data,
    Options? options,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
    required T Function(Map<String, dynamic>? response) mapper,
  }) async {
    final responseData = await _handleRequest('POST', endpoint, data);
    return mapper(responseData);
  }

  @override
  Future<T> put<T>({
    required String endpoint,
    JSON? data,
    required T Function(Map<String, dynamic>? response) mapper,
  }) async {
    final responseData = await _handleRequest('PUT', endpoint, data);
    return mapper(responseData);
  }
}
