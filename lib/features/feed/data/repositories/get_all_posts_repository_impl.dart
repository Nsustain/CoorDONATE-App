import 'package:coordonate_app/core/error/failure.dart';
import 'package:coordonate_app/features/feed/data/datasources/posts_remote_datasource.dart';
import 'package:coordonate_app/features/feed/data/models/post_model.dart';
import 'package:coordonate_app/features/feed/data/models/posts_response_model.dart';
import 'package:coordonate_app/features/feed/domain/entities/file_url.dart';
import 'package:coordonate_app/features/feed/domain/entities/post_entity.dart';
import 'package:coordonate_app/features/feed/domain/entities/posts_entity.dart';
import 'package:coordonate_app/features/feed/domain/repositories/get_all_posts_repository.dart';
import 'package:coordonate_app/features/feed/domain/usecases/create_post.dart';
import 'package:dartz/dartz.dart';

class GetAllPostsRepositoryImpl implements GetAllPostsRepository {
  final PostRemoteDatasource getAllPostsRemoteDatasource;

  const GetAllPostsRepositoryImpl(this.getAllPostsRemoteDatasource);

  @override
  Future<Either<Failure, List<PostEntity>>> getAllPosts() async {
    final response = await getAllPostsRemoteDatasource.getAllPosts();
    return response.fold((l) => Left(ServerFailure('fetch failed')), (r) {
      if (r.isEmpty) {
        return Left(NoDataFailure());
      }
      // print(Right(toPostsEntity(PostsModel(posts: r.posts))));
      return Right((r.map((post) => toPostEntity(post)).toList()));
    });
  }

  @override
  Future<Either<Failure, List<PostEntity>>> createPost(CreatePostParams createPostParams) async {
    final response = await getAllPostsRemoteDatasource.createPost(createPostParams);
    return response.fold((l) => Left(ServerFailure('fetch failed')), (r) {
      if (r.isEmpty) {
        return Left(NoDataFailure());
      }
      return Right((r.map((post) => toPostEntity(post)).toList()));
    });
  }

  @override
  Future<Either<Failure, FileUrl>> uploadFile() {
    // TODO: implement uploadFile
    throw UnimplementedError();
  }}
