import 'package:coordonate_app/features/feed/data/models/post_user_response_model.dart';
import 'package:coordonate_app/features/feed/domain/entities/post_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_model.freezed.dart';
part 'post_model.g.dart';

@freezed
class PostModel with _$PostModel {
  const factory PostModel({
    required int id,
    required String? postCreated,
    required PostUserModel user,
    required List<String>? tags,
    required List<String>? images,
    String? text,
    required int likes,
    required int comments,
    required bool? bookMarked,
    required bool? liked,
  }) = _PostModel;

  const PostModel._();
  factory PostModel.fromJson(Map<String, dynamic> json) =>
      _$PostModelFromJson(json);
}

PostEntity toPostEntity(PostModel model) {
  return PostEntity(
      postId: model.id,
      postUserEntity: toPostUserEntity(model.user),
      postImageUrl: model.images!,
      postText: model.text,
      postCreated: model.postCreated != null
          ? model.postCreated!
          : DateTime.now().toString(),
      tags: model.tags,
      like: model.likes,
      comments: model.comments,
      bookMarked: model.bookMarked != null ? false : true,
      liked: model.liked);
}
