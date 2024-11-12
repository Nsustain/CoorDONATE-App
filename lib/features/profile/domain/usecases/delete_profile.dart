import 'package:coordonate_app/core/error/failure.dart';
import 'package:coordonate_app/features/profile/domain/entities/profile_entity.dart';
import 'package:coordonate_app/features/profile/domain/repositories/profile_repository.dart';
import 'package:dartz/dartz.dart';

class DeleteProfile {

  final ProfileRepository profileRepository;

  DeleteProfile({
    required this.profileRepository
  });

  Future<Either<Failure, ProfileEntity>>  call(String id) async {
    return await profileRepository.deleteProfile(id);
  }
}