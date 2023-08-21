import 'package:coordonate_app/core/error/failure.dart';
import 'package:coordonate_app/features/feed/data/datasources/posts_remote_datasource.dart';
import 'package:coordonate_app/features/feed/data/models/posts_response_model.dart';
import 'package:coordonate_app/features/feed/domain/entities/posts_entity.dart';
import 'package:coordonate_app/features/feed/domain/repositories/get_all_posts_repository.dart';
import 'package:dartz/dartz.dart';

class GetAllPostsRepositoryImpl implements GetAllPostsRepository {
  final PostRemoteDatasource getAllPostsRemoteDatasource;

  const GetAllPostsRepositoryImpl(this.getAllPostsRemoteDatasource);

  @override
  Future<Either<Failure, PostsEntity>> getAllPosts() async {
    final response = await getAllPostsRemoteDatasource.getAllPosts();
    return response.fold((l) => Left(ServerFailure('fetch failed')), (r) {
      if (r.posts?.isEmpty ?? true) {
        return Left(NoDataFailure());
      }
      // print(Right(toPostsEntity(PostsModel(posts: r.posts))));
      return Right(toPostsEntity(PostsModel(posts: r.posts)));
    });
  }

  @override
  Future<Either<Failure, PostsEntity>> createPost() async {
    final response = await getAllPostsRemoteDatasource.getAllPosts();
    return response.fold((l) => Left(ServerFailure('fetch failed')), (r) {
      if (r.posts?.isEmpty ?? true) {
        return Left(NoDataFailure());
      }
      return Right(toPostsEntity(PostsModel(posts: r.posts)));
    });
  }
}
