import 'package:coordonate_app/core/error/failure.dart';
import 'package:coordonate_app/features/feed/domain/entities/posts_entity.dart';
import 'package:dartz/dartz.dart';

abstract class GetAllPostsRepository {
  Future<Either<Failure, PostsEntity>> getAllPosts();
}
