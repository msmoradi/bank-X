import 'package:banx/core/data/model/user_profile_response_dto.dart';

abstract class ProfileRemoteDataSource {
  Future<UserProfileResponseDto> getProfile();
}
