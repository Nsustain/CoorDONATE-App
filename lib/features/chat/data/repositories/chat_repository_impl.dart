import 'package:coordonate_app/core/error/failure.dart';
import 'package:coordonate_app/features/chat/data/datasources/chat_remote_datasource.dart';
import 'package:coordonate_app/features/chat/domain/entities/chat_entity.dart';
import 'package:coordonate_app/features/chat/domain/repositories/chat_message_repository.dart';
import 'package:dartz/dartz.dart';

class ChatRepositoryImpl extends ChatRepository {
  final ChatRemoteDataSource chatDataSource;
  ChatRepositoryImpl(
    this.chatDataSource,
  );

  @override
  Future<Either<Failure, Chat>> deleteMsg(id) async {
    final response = await chatDataSource.deleteMsg(id);

    return response.fold((failure) => left(failure), (ChatModel) {
      return Right(ChatModel.toEntity());
    });
  }

  @override
  Future<Either<Failure, Chat>> updateMsg(id, message) async {
    final response = await chatDataSource.updateMsg(id, message);

    return response.fold((failure) => left(failure), (ChatModel) {
      return Right(ChatModel.toEntity());
    });
  }
}
