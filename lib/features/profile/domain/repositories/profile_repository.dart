

import 'package:coordonate_app/core/core.dart';
import 'package:coordonate_app/features/profile/domain/entities/profile_entity.dart';
import 'package:dartz/dartz.dart';

abstract class ProfileRepository {

  Future<Either<Failure, ProfileEntity>> getProfileByUserId(String userId);
  Future<Either<Failure, ProfileEntity>> getProfileById(String id);
  Future<Either<Failure, List<ProfileEntity>>> getProfiles();
  Future<Either<Failure, ProfileEntity>> updateProfile(String id);
  Future<Either<Failure, ProfileEntity>> deleteProfile(String id);

}