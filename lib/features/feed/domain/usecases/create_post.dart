import 'package:coordonate_app/core/error/failure.dart';
import 'package:coordonate_app/core/usecase/usecase.dart';
import 'package:coordonate_app/features/feed/domain/entities/post_entity.dart';
import 'package:coordonate_app/features/feed/domain/repositories/get_all_posts_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_post.freezed.dart';
part 'create_post.g.dart';

class CreatePost implements UseCase<List<PostEntity>, CreatePostParams> {
  final GetAllPostsRepository repository;

  CreatePost(this.repository);

  @override
  Future<Either<Failure, List<PostEntity>>> call(params) async {
    return await repository.createPost(params);
  }
}

@freezed
class CreatePostParams with _$CreatePostParams {
  const factory CreatePostParams({
    @Default("") String fileUrl,
    @Default("") String toBePostedText,
  }) = _CreatePostParams;

  factory CreatePostParams.fromJson(Map<String, dynamic> json) =>
      _$CreatePostParamsFromJson(json);
}
