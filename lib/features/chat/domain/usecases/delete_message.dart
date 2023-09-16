import 'package:coordonate_app/core/core.dart';
import 'package:coordonate_app/features/chat/domain/entities/message_entity.dart';
import 'package:coordonate_app/features/chat/domain/repositories/chat_message_repository.dart';
import 'package:dartz/dartz.dart';

class DeleteText extends UseCase<Message, Message> {
  final ChatRepository _repo;

  DeleteText(this._repo);
  @override
  Future<Either<Failure, Message>> call(Message params) =>
      _repo.deleteMsg(params.id);
}
