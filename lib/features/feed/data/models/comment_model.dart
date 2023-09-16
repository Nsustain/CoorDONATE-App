import 'package:freezed_annotation/freezed_annotation.dart';
part 'comment_model.freezed.dart';
part 'comment_model.g.dart';

@freezed
class CommentModel with _$CommentModel {
  const factory CommentModel({
    required String id,
    required String postId,
    required String text,
    required String authorId,
    required String authorName,
    required String? authorProfileImageUrl,
    required String? timestamp,
  }) = _CommentModel;

  factory CommentModel.fromJson(Map<String, dynamic> json) =>
      _$CommentModelFromJson(json);
}
