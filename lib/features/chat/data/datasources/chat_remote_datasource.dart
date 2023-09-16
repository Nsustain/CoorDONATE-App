import 'package:coordonate_app/core/core.dart';
import 'package:coordonate_app/features/chat/data/models/message_model.dart';
import 'package:dartz/dartz.dart';

abstract class ChatRemoteDataSource {
  Future<Either<Failure, MessageModel>> updateMsg(id, msg);
  Future<Either<Failure, MessageModel
  >> deleteMsg(id);
}

class ChatRemoteDatasourceImpl implements ChatRemoteDataSource {
  final DioClient _client;
  ChatRemoteDatasourceImpl(this._client);

  @override
  Future<Either<Failure, MessageModel>> deleteMsg(id) async {
    final response = await _client.postRequest(ListAPI.deleteMessage,
        converter: (response) =>
            MessageModel.fromJson(response as Map<String, dynamic>));
    return response;
  }

  @override
  Future<Either<Failure, MessageModel>> updateMsg(id, msg) async {
    final response = await _client.postRequest(ListAPI.updateMessage,
        converter: (response) =>
            MessageModel.fromJson(response as Map<String, dynamic>));
    return response;
  }
}
