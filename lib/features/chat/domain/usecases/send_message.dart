import 'package:coordonate_app/core/error/failure.dart';
import 'package:coordonate_app/features/chat/domain/entities/chat_entity.dart';
import 'package:coordonate_app/features/chat/domain/repositories/chat_repository.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/usecase/usecase.dart';

class SendMessageUseCase implements UseCase<void, Chat> {
  final ChatRepository messageRepository;

  SendMessageUseCase(this.messageRepository);

  @override
  Future<Either<Failure, void>> call(Chat chatEntity) async {
    try {
      await messageRepository.sendMessage(chatEntity);
      return const Right(null);
    } catch (e) {
      return const Left( ServerFailure('Failed to send message.'));
    }
  }
}