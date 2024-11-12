

import 'package:coordonate_app/core/error/failure.dart';
import 'package:coordonate_app/features/profile/domain/entities/profile_entity.dart';
import 'package:coordonate_app/features/profile/domain/repositories/profile_repository.dart';
import 'package:dartz/dartz.dart';

class GetProfiles {

  final ProfileRepository profileRepository;

  GetProfiles({
    required this.profileRepository
  });

  Future<Either<Failure, List<ProfileEntity>>>  call() async {
    return await profileRepository.getProfiles();
  }
}