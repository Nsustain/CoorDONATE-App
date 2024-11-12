

import 'package:coordonate_app/core/core.dart';
import 'package:coordonate_app/features/profile/domain/entities/profile_entity.dart';
import 'package:coordonate_app/features/profile/domain/repositories/profile_repository.dart';
import 'package:dartz/dartz.dart';

class GetProfileById {

  final ProfileRepository profileRepository;

  GetProfileById({
    required this.profileRepository
  });

  Future<Either<Failure, ProfileEntity>> call(String id) async {
    return await profileRepository.getProfileById(id);
  }

}