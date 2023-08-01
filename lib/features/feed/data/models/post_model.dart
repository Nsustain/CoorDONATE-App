import 'package:coordonate_app/features/feed/data/models/post_user_response_model.dart';
import 'package:coordonate_app/features/feed/domain/entities/post_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_model.freezed.dart';
part 'post_model.g.dart';

@freezed
class PostModel with _$PostModel {
  const factory PostModel({
    required String postId,
    required PostUserModel postUserModel,
    required List<String> tags,
    List<String>? postImageUrl,
    String? postText,
    required int like,
    required int comments,
    required bool bookMarked,
  }) = _PostModel;

  const PostModel._();
  factory PostModel.fromJson(Map<String, dynamic> json) =>
      _$PostModelFromJson(json);
}

PostEntity toPostEntity(PostModel model) {
  return PostEntity(
      postId: model.postId,
      postUserEntity: toPostUserEntity(model.postUserModel),
      tags: model.tags,
      like: model.like,
      comments: model.comments,
      bookMarked: model.bookMarked);
}
