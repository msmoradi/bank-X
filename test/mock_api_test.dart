import 'package:banx/core/data/model/send_otp_response_dto.dart';
import 'package:banx/core/data/model/token_dto.dart';
import 'package:banx/core/data/model/user_profile_response_dto.dart';
import 'package:banx/core/data/model/response/kyc_response_dto.dart';
import 'package:banx/core/data/model/generic_list_response_dto.dart';
import 'package:banx/core/data/model/address_dto.dart';
import 'package:banx/core/data/model/get_inquiry_response_dto.dart';
import 'package:banx/core/data/model/response/card/card_types_response_dto.dart';
import 'package:banx/core/networking/api_endpoints.dart';
import 'package:banx/core/networking/mock_api_service.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MockApiService Integration Tests', () {
    late MockApiService mockApiService;

    setUp(() {
      mockApiService = MockApiService();
      MockApiService.resetState();
    });

    test('1. Send OTP Flow (with & without signup)', () async {
      // Test number without signup
      final sendOtpResponse1 = await mockApiService.post<SendOtpResponseDto>(
        endpoint: ApiEndpoint.auth(AuthEndpoint.SEND_OTP),
        data: {'phoneNumber': '09121111111'},
        mapper: (json) => SendOtpResponseDto.fromJson(json!),
      );

      expect(sendOtpResponse1.needSignup, isFalse);
      expect(sendOtpResponse1.codeLength, 5);

      // Test number with signup
      final sendOtpResponse2 = await mockApiService.post<SendOtpResponseDto>(
        endpoint: ApiEndpoint.auth(AuthEndpoint.SEND_OTP),
        data: {'phoneNumber': '09123456789'},
        mapper: (json) => SendOtpResponseDto.fromJson(json!),
      );

      expect(sendOtpResponse2.needSignup, isTrue);
    });

    test('2. Verify OTP returns tokens', () async {
      final tokenResponse = await mockApiService.post<TokenDto>(
        endpoint: ApiEndpoint.auth(AuthEndpoint.VERIFY_OTP),
        data: {'phoneNumber': '09121111111', 'otp': '12345'},
        mapper: (json) => TokenDto.fromJson(json!),
      );

      expect(tokenResponse.accessToken, 'mock_access_token');
      expect(tokenResponse.refreshToken, 'mock_refresh_token');
    });

    test('3. State Machine Onboarding Progression', () async {
      // 3.1 Initial profile (hasPassword: false)
      var profile = await mockApiService.get<UserProfileResponseDto>(
        endpoint: ApiEndpoint.profile(ProfileEndpoint.GET_PROFILE),
        mapper: UserProfileResponseDto.fromJson,
      );

      expect(profile.hasPassword, isFalse);
      expect(profile.routingButton?.deeplink, '/create_password');
      expect(profile.kycLevel, '0');

      // 3.2 User sets password
      await mockApiService.put<void>(
        endpoint: ApiEndpoint.auth(AuthEndpoint.PASSWORD),
        data: {'password': '1234'},
        mapper: (_) {},
      );
      await mockApiService.post<TokenDto>(
        endpoint: ApiEndpoint.auth(AuthEndpoint.PASSWORD),
        data: {'password': '1234'},
        mapper: (json) => TokenDto.fromJson(json!),
      );

      // 3.3 Profile should now require KYC
      profile = await mockApiService.get<UserProfileResponseDto>(
        endpoint: ApiEndpoint.profile(ProfileEndpoint.GET_PROFILE),
        mapper: UserProfileResponseDto.fromJson,
      );

      expect(profile.hasPassword, isTrue);
      expect(profile.routingButton?.deeplink, '/kyc_status');

      // 3.4 KYC status inquiry initially shows pending face verification
      var kycResponse = await mockApiService.get<KycResponseDto>(
        endpoint: ApiEndpoint.kyc(KYCEndpoint.KYC),
        mapper: KycResponseDto.fromJson,
      );

      expect(kycResponse.state.faceStatus.status, KYCStatus.pending);
      expect(kycResponse.routingButton.deeplink, '/face_detection');

      // 3.5 User records video and uploads it
      await mockApiService.post<void>(
        endpoint: ApiEndpoint.kyc(KYCEndpoint.VIDEO),
        data: {},
        mapper: (_) {},
      );

      // 3.6 Profile should now require Card selection
      profile = await mockApiService.get<UserProfileResponseDto>(
        endpoint: ApiEndpoint.profile(ProfileEndpoint.GET_PROFILE),
        mapper: UserProfileResponseDto.fromJson,
      );

      expect(profile.kycLevel, '1');
      expect(profile.routingButton?.deeplink, '/select_card');

      // 3.7 KYC status screen should show all completed
      kycResponse = await mockApiService.get<KycResponseDto>(
        endpoint: ApiEndpoint.kyc(KYCEndpoint.KYC),
        mapper: KycResponseDto.fromJson,
      );
      expect(kycResponse.state.faceStatus.status, KYCStatus.succeeded);
      expect(kycResponse.state.sayahStatus.status, KYCStatus.succeeded);

      // 3.8 Address list initially empty
      var addresses = await mockApiService.get<GenericListResponseDto<AddressDto>>(
        endpoint: ApiEndpoint.address(AddressEndpoint.ADDRESS),
        mapper: (json) => GenericListResponseDto<AddressDto>.fromJson(
          json,
          (item) => AddressDto.fromJson(item as Map<String, dynamic>),
        ),
      );
      expect(addresses.content, isEmpty);

      // 3.9 Inquiry postal code and add address
      final inquiry = await mockApiService.get<GetInquiryResponseDto>(
        endpoint: ApiEndpoint.address(AddressEndpoint.INQUIRY),
        queryParameters: {'postalCode': '1411111111'},
        mapper: GetInquiryResponseDto.fromJson,
      );
      expect(inquiry.address.postalCode, '1411111111');

      await mockApiService.post<GetInquiryResponseDto>(
        endpoint: ApiEndpoint.address(AddressEndpoint.ADDRESS),
        data: inquiry.address.toJson(),
        mapper: (json) => GetInquiryResponseDto.fromJson(json!),
      );

      // 3.10 Address list now returns the mock address
      addresses = await mockApiService.get<GenericListResponseDto<AddressDto>>(
        endpoint: ApiEndpoint.address(AddressEndpoint.ADDRESS),
        mapper: (json) => GenericListResponseDto<AddressDto>.fromJson(
          json,
          (item) => AddressDto.fromJson(item as Map<String, dynamic>),
        ),
      );
      expect(addresses.content, isNotEmpty);
      expect(addresses.content.first.postalCode, '1411111111');

      // 3.11 User places card order
      await mockApiService.post<void>(
        endpoint: ApiEndpoint.card(CardEndpoint.ORDERS),
        data: {},
        mapper: (_) {},
      );

      // 3.12 Profile should now route to /main dashboard
      profile = await mockApiService.get<UserProfileResponseDto>(
        endpoint: ApiEndpoint.profile(ProfileEndpoint.GET_PROFILE),
        mapper: UserProfileResponseDto.fromJson,
      );

      expect(profile.routingButton?.deeplink, '/main/0');
      expect(profile.kycLevel, '2');
      expect(profile.profileStatus, 'COMPLETED');
    });

    test('4. Card type listings', () async {
      final cardTypes = await mockApiService.get<CardTypesResponseDto>(
        endpoint: ApiEndpoint.card(CardEndpoint.TYPES),
        mapper: CardTypesResponseDto.fromJson,
      );

      expect(cardTypes.cardTypes, isNotEmpty);
      expect(cardTypes.cardTypes.first.title, contains('مشکی'));
    });
  });
}
