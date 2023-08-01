import 'package:coordonate_app/features/feed/domain/entities/post_user_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_user_response_model.freezed.dart';
part 'post_user_response_model.g.dart';

@freezed
@JsonSerializable()
class PostUserModel with _$PostUserModel {
  const factory PostUserModel({
    required String fullname,
    required String username,
    required String profileImageUrl,
    required bool isVerified,
    required String email,
    required String role,
    required int id,
  }) = _PostUserModel;

  factory PostUserModel.fromJson(Map<String, dynamic> json) =>
      _$PostUserModelFromJson(json);

 
}
 PostUserEntity toPostUserEntity(PostUserModel model) {
    return PostUserEntity(
        fullname: model.fullname,
        username: model.username,
        profileImageUrl: model.profileImageUrl,
        isVerified: model.isVerified,
        email: model.email,
        role: model.role,
        id: model.id);
  }