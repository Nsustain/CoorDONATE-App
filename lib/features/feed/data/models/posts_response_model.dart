import 'package:coordonate_app/features/feed/data/models/post_model.dart';
import 'package:coordonate_app/features/feed/data/models/post_user_response_model.dart';
import 'package:coordonate_app/features/feed/domain/entities/post_entity.dart';
import 'package:coordonate_app/features/feed/domain/entities/posts_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'posts_response_model.freezed.dart';
part 'posts_response_model.g.dart';

@freezed
class PostsModel with _$PostsModel {
  const factory PostsModel({
    List<PostModel>? posts,
  }) = _Posts;

  factory PostsModel.fromJson(Map<String, dynamic> json) =>
      _$PostsModelFromJson(json);
}

PostsEntity toPostsEntity(PostsModel postsModel) {
  final listPosts = postsModel.posts!.map<PostEntity>((model) => PostEntity(
      postId: model.postId,
      postUserEntity: toPostUserEntity(model.postUserModel),
      tags: model.tags,
      like: model.like,
      comments: model.comments,
      bookMarked: model.bookMarked));
  return PostsEntity(posts: listPosts as List<PostEntity>);
}
