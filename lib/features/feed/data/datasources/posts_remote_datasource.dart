import 'package:coordonate_app/core/api/dio_client.dart';
import 'package:coordonate_app/core/error/failure.dart';
import 'package:coordonate_app/features/feed/data/models/posts_response_model.dart';
import 'package:dartz/dartz.dart';

abstract class PostRemoteDatasource {
  Future<Either<Failure, PostsModel>> getAllPosts();
}

class PostRemoteDatasourceImpl implements PostRemoteDatasource {
  final DioClient _client;

  const PostRemoteDatasourceImpl(this._client);

  @override
  Future<Either<Failure, PostsModel>> getAllPosts() async {
    final response = await _client.getRequest('http://someplaceonearth',
        converter: ((response) => PostsModel.fromJson(response)));
    return response;
  }
}
