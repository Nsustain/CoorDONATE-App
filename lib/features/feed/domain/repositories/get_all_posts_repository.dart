import 'package:coordonate_app/core/core.dart';
import 'package:coordonate_app/core/error/failure.dart';
import 'package:coordonate_app/features/feed/domain/entities/file_url.dart';
import 'package:coordonate_app/features/feed/domain/entities/post_entity.dart';
import 'package:coordonate_app/features/feed/domain/usecases/create_post.dart';
import 'package:dartz/dartz.dart';

abstract class GetAllPostsRepository {
  Future<Either<Failure, List<PostEntity>>> getAllPosts();
  Future<Either<Failure, List<PostEntity>>> createPost(CreatePostParams createPostParams);
  Future<Either<Failure, FileUrl>> uploadFile();
}
