import 'dart:io';

import 'package:coordonate_app/core/error/failure.dart';
import 'package:coordonate_app/core/usecase/usecase.dart';
import 'package:coordonate_app/features/feed/domain/entities/file_url.dart';
import 'package:coordonate_app/features/feed/domain/repositories/get_all_posts_repository.dart';
import 'package:coordonate_app/features/feed/domain/usecases/get_all_posts.dart';
import 'package:dartz/dartz.dart';

class UploadFile implements UseCase<FileUrl, File> {
  GetAllPostsRepository repository;
  UploadFile(this.repository);
  @override
  Future<Either<Failure, FileUrl>> call(File params) async {
    return await repository.uploadFile();
  }
  
}