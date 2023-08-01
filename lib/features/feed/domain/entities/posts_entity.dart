import 'package:coordonate_app/features/feed/domain/entities/post_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'posts_entity.freezed.dart';

@freezed
class PostsEntity with _$PostsEntity {
  const factory PostsEntity({
    List<PostEntity>? posts,
  }) = _Posts;
}
