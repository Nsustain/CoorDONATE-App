import 'package:freezed_annotation/freezed_annotation.dart';
part 'like_model.freezed.dart';
part 'like_model.g.dart';

@freezed
class LikeModel with _$LikeModel {
  const factory LikeModel({
    required String id,
    required String postId,
    required String userId,
    required String userName,
    required String? userProfileImageUrl,
    required String timestamp,
  }) = _LikeModel;

  factory LikeModel.fromJson(Map<String, dynamic> json) =>
      _$LikeModelFromJson(json);
}
