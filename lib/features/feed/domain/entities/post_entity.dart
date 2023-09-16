import 'package:coordonate_app/features/feed/domain/entities/post_user_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_entity.freezed.dart';

@freezed
class PostEntity with _$PostEntity {
  const factory PostEntity({
    required int postId,
    required PostUserEntity postUserEntity,
    required String postCreated,
    required List<String>? tags,
    required List<String> postImageUrl,
    String? postText,
    required int likes,
    required int comments,
    required bool bookMarked,
    required bool? liked,
  }) = _PostEntity;
}
