import 'dart:async';
import 'package:banx/core/data/datasource/local/profile_local_datasource.dart';
import 'package:banx/core/data/datasource/remote/profile_remote_datasource.dart';
import 'package:banx/core/data/mapper/response.mapper.dart';
import 'package:banx/core/data/mapper/user_profile_mapper.dart';
import 'package:banx/core/domain/entities/user_profile_entity.dart';
import 'package:banx/core/domain/entity_wrapper.dart';
import 'package:banx/core/domain/repository/profile_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ProfileRepository)
class ProfileRepositoryImpl extends ProfileRepository {
  final ProfileRemoteDataSource profileRemoteDataSource;
  final ProfileLocalDataSource profileLocalDataSource;

  ProfileRepositoryImpl({
    required this.profileLocalDataSource,
    required this.profileRemoteDataSource,
  });

  @override
  Future<UserProfileEntity?> getLocalProfile() {
    return profileLocalDataSource.getProfile();
  }

  @override
  Future<EntityWrapper<UserProfileEntity>> getProfile() {
    return profileRemoteDataSource.getProfile().mapResponseToEntityWrapper(
        mapper: (model) {
      return model.toEntity();
    }).then((entityWrapper) async {
      if (entityWrapper is SuccessEntityWrapper<UserProfileEntity>) {
        await profileLocalDataSource.saveProfile(entityWrapper.data);
      }
      return entityWrapper;
    });
  }

  @override
  Future<void> nfcActive(bool active) {
    return profileLocalDataSource.nfcActive(active);
  }
}
