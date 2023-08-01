import 'package:coordonate_app/features/feed/domain/entities/post_user_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_entity.freezed.dart';

@freezed
class PostEntity with _$PostEntity {
  const factory PostEntity({
    required String postId,
    required PostUserEntity postUserEntity,
    required List<String> tags,
    List<String>? postImageUrl,
    String? postText,
    required int like,
    required int comments,
    required bool bookMarked,
  }) = _PostEntity;
}
