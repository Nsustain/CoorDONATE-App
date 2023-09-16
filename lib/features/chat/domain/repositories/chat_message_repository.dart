import 'package:coordonate_app/core/error/failure.dart';
import 'package:coordonate_app/features/chat/domain/entities/message_entity.dart';
import 'package:dartz/dartz.dart';

abstract class ChatRepository {
  Future<Either<Failure, Message>> updateMsg(id, message);
  Future<Either<Failure, Message>> deleteMsg(id);
}