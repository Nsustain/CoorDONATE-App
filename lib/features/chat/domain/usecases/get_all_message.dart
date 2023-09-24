import 'package:coordonate_app/core/usecase/usecase.dart';
import 'package:coordonate_app/features/chat/domain/entities/message_entity.dart';
import 'package:coordonate_app/features/chat/domain/repositories/chat_repository.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../entities/chat_entity.dart';

class GetAllMessagesUseCase extends UseCase<List<Chat>, String> {
  final ChatRepository messageRepository;

  GetAllMessagesUseCase(this.messageRepository);

  @override
  Future<Either<Failure, List<Chat>>> call(String chatRoomId) async {

      return await messageRepository.getAllMessages(chatRoomId);
   
  }
}