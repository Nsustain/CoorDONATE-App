import 'package:coordonate_app/features/feed/data/models/comment_model.dart';
import 'package:coordonate_app/features/feed/data/models/like_model.dart';
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
    required PostUserModel postedBy,
    required List<String>? tags,
    required List<String>? images,
    String? contentText,
    required List<LikeModel> likes,
    required List<CommentModel> comments,
    required bool? bookMarked,
    required bool? liked,
  }) = _PostModel;

  factory PostModel.fromJson(Map<String, dynamic> json) =>
      _$PostModelFromJson(json);
}

PostEntity toPostEntity(PostModel model) {
  return PostEntity(
      postId: model.id,
      postUserEntity: toPostUserEntity(model.postedBy),
      postImageUrl: model.images!,
      postText: model.contentText,
      postCreated: model.postCreated != null ? model.postCreated! : "just now",
      tags: model.tags,
      likes: model.likes.length,
      comments: model.comments.length,
      bookMarked: model.bookMarked != null ? false : true,
      liked: model.liked);
}
