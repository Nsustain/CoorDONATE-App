import 'package:coordonate_app/core/error/failure.dart';
import 'package:coordonate_app/core/usecase/usecase.dart';
import 'package:coordonate_app/features/feed/domain/entities/post_entity.dart';
import 'package:coordonate_app/features/feed/domain/entities/posts_entity.dart';
import 'package:coordonate_app/features/feed/domain/repositories/get_all_posts_repository.dart';
import 'package:dartz/dartz.dart';

class GetAllPosts implements UseCase<List<PostEntity>, NoParams> {
  final GetAllPostsRepository repository;

  GetAllPosts(this.repository);

  @override
  Future<Either<Failure, List<PostEntity>>> call(NoParams noParams) async {
    return await repository.getAllPosts();
  }
}
