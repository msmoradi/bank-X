// ignore_for_file: constant_identifier_names
import 'package:flutter/foundation.dart';

@immutable
class ApiEndpoint {
  const ApiEndpoint._();

  static const baseUrl = 'https://api.example.com';

  static String auth(AuthEndpoint endpoint) {
    const path = '/api/v1/app/auth/';
    switch (endpoint) {
      case AuthEndpoint.SEND_OTP:
        return '$path/otp/send';
      case AuthEndpoint.VERIFY_OTP:
        return '$path/otp/verify';
      case AuthEndpoint.PASSWORD:
        return '$path/password';
      case AuthEndpoint.REFRESH:
        return '$path/refresh';
      case AuthEndpoint.SIGN_UP:
        return '$path/otp/signup';
      case AuthEndpoint.IDENTITY_CORRECTION:
        return '$path/otp/birthdate';
    }
  }

  static String profile(ProfileEndpoint endpoint) {
    const path = '/api/v1/app/';
    switch (endpoint) {
      case ProfileEndpoint.GET_PROFILE:
        return '$path/profile';
      case ProfileEndpoint.POSTAL_CODE:
        return '$path/postalCode';
    }
  }

  static String card(CardEndpoint endpoint) {
    const path = '/api/v1/app/card';
    switch (endpoint) {
      case CardEndpoint.ORDERS:
        return '$path/orders';
      case CardEndpoint.TYPES:
        return '$path/types';
      case CardEndpoint.SHIPPING_TIME_SLOTS:
        return '$path/shipping-time-slots';
    }
  }

  static String passkeys(PasskeysEndpoint endpoint) {
    const path = '/api/v1/app/auth/passkeys';
    switch(endpoint){
      case PasskeysEndpoint.ATTESTATION_RESULT:
        return '$path/attestation/result';
      case PasskeysEndpoint.ATTESTATION_OPTIONS:
        return '$path/attestation/options';
      case PasskeysEndpoint.ASSERTION_RESULT:
        return '$path/assertion/result';
      case PasskeysEndpoint.ASSERTION_OPTIONS:
        return '$path/assertion/options';
    }
  }

  static String kyc(KYCEndpoint endpoint) {
    const path = '/api/v1/app/kyc';
    switch (endpoint) {
      case KYCEndpoint.VIDEO:
        return '$path/video';
      case KYCEndpoint.IMAGE:
        return '$path/image';
      case KYCEndpoint.KYC:
        return path;
    }
  }

  static String address(AddressEndpoint endpoint) {
    const path = '/api/v1/app/address';
    switch (endpoint) {
      case AddressEndpoint.ADDRESS:
        return path;
      case AddressEndpoint.STATES:
        return '$path/states';
      case AddressEndpoint.INQUIRY:
        return '$path/inquiry';
      case AddressEndpoint.CITIES:
        return '$path/cities';
    }
  }
}

enum AuthEndpoint {
  SEND_OTP,
  VERIFY_OTP,
  PASSWORD,
  REFRESH,
  SIGN_UP,
  IDENTITY_CORRECTION,
}

enum ProfileEndpoint { GET_PROFILE, POSTAL_CODE }

enum CardEndpoint { ORDERS, TYPES, SHIPPING_TIME_SLOTS }

enum PasskeysEndpoint {
  ATTESTATION_RESULT,
  ATTESTATION_OPTIONS,
  ASSERTION_RESULT,
  ASSERTION_OPTIONS
}

enum AddressEndpoint { ADDRESS, STATES, INQUIRY, CITIES }

enum KYCEndpoint { VIDEO, IMAGE, KYC }
