import 'package:coordonate_app/core/api/dio_client.dart';
import 'package:coordonate_app/core/error/failure.dart';
import 'package:coordonate_app/features/feed/data/models/post_model.dart';
import 'package:coordonate_app/features/feed/data/models/posts_response_model.dart';
import 'package:coordonate_app/utils/helper/helper.dart';
import 'package:dartz/dartz.dart';

abstract class PostRemoteDatasource {
  Future<Either<Failure, PostsModel>> getAllPosts();
  Future<void> createPost();
}

class PostRemoteDatasourceImpl implements PostRemoteDatasource {
  final DioClient _client;

  const PostRemoteDatasourceImpl(this._client);

  @override
  Future<Either<Failure, PostsModel>> getAllPosts() async {
    final response = await _client.getRequest(
      '/api/post/feed',
      converter: ((response) => PostsModel.fromJson(response)),
    );
    // print(response);
    return response;
  }

  @override
  Future<void> createPost() async {
    await _client.postRequest('/api/post/new',
        converter: ((response) => PostModel.fromJson(response)));
  }
}
