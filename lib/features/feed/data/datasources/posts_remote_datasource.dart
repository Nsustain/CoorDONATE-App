import 'package:coordonate_app/core/api/dio_client.dart';
import 'package:coordonate_app/core/error/failure.dart';
import 'package:coordonate_app/features/feed/data/models/post_model.dart';
import 'package:coordonate_app/features/feed/data/models/posts_response_model.dart';
import 'package:coordonate_app/utils/helper/helper.dart';
import 'package:dartz/dartz.dart';

abstract class PostRemoteDatasource {
  Future<Either<Failure, Iterable<PostModel>>> getAllPosts();
  Future<void> createPost();
}

class PostRemoteDatasourceImpl implements PostRemoteDatasource {
  final DioClient _client;

  const PostRemoteDatasourceImpl(this._client);

  @override
  Future<Either<Failure, List<PostModel>>> getAllPosts() async {
    final response = await _client.getAllRequest('/api/post/feed',
        converter: (post) => PostModel.fromJson(post));
    return response;
    // return Right(response) as List<PostModel>;
  }

  @override
  Future<void> createPost() async {
    await _client.postRequest('/api/post/new',
        converter: ((response) => PostModel.fromJson(response)));
  }
}
