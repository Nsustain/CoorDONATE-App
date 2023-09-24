import 'package:coordonate_app/core/usecase/usecase.dart';
import 'package:coordonate_app/features/chat/domain/repositories/chat_repository.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../entities/chat_entity.dart';

class MarkAsReadUseCase implements UseCase<void, Chat> {
  final ChatRepository messageRepository;

  MarkAsReadUseCase(this.messageRepository);

  @override
  Future<Either<Failure, void>> call(Chat chatEntity) async {
    return await messageRepository.markAsRead(chatEntity);
    // return Right(null);
  }
}
