import 'package:coordonate_app/core/core.dart';
import 'package:coordonate_app/features/chat/domain/entities/chat_entity.dart';
import 'package:coordonate_app/features/chat/domain/repositories/chat_message_repository.dart';
import 'package:dartz/dartz.dart';

class UpdateText extends UseCase<Chat, Chat> {
  final ChatRepository _repo;

  UpdateText(this._repo);
  @override
  Future<Either<Failure, Chat>> call(params) =>
      _repo.updateMsg(params.id, params.msg);
}
