import 'package:coordonate_app/core/core.dart';
import 'package:coordonate_app/features/chat/domain/entities/chat_entity.dart';
import 'package:coordonate_app/features/chat/domain/usecases/update_text.dart';
import 'package:dartz/dartz.dart';

abstract class ChatRepository {
  Future<Either<Failure, Chat>> updateMsg(id, message);
  Future<Either<Failure, Chat>> deleteMsg(id);
}
