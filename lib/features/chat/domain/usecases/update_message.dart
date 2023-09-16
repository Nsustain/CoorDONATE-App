import 'package:coordonate_app/core/core.dart';
import 'package:coordonate_app/features/chat/domain/entities/message_entity.dart';
import 'package:coordonate_app/features/chat/domain/repositories/chat_message_repository.dart';
import 'package:dartz/dartz.dart';

class UpdateText extends UseCase<Message, Message> {
  final ChatRepository _repo;

  UpdateText(this._repo);
  @override
  Future<Either<Failure, Message>> call(params) =>
      _repo.updateMsg(params.id, params.content);
}
