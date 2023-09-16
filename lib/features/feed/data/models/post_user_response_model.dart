import 'package:coordonate_app/features/feed/domain/entities/post_user_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_user_response_model.freezed.dart';
part 'post_user_response_model.g.dart';

@freezed
@JsonSerializable()
class PostUserModel with _$PostUserModel {
  const factory PostUserModel({
    required String? name,
    required String? username,
    required String? photo,
    required bool? verified,
    required String? email,
    required String? role,
    required int? id,
  }) = _PostUserModel;

  factory PostUserModel.fromJson(Map<String, dynamic> json) =>
      _$PostUserModelFromJson(json);
}

PostUserEntity toPostUserEntity(PostUserModel model) {
  return PostUserEntity(
    fullname: model.name != null ? model.name! : '',
    username: model.username != null ? model.username! : '',
    profileImageUrl: model.photo != null ? model.photo! : '',
    isVerified:
        (model.verified != null && model.verified != false) ? true : false,
    email: model.email != null ? model.email! : '',
    role: model.role != null ? model.role! : '',
    id: model.id != null ? model.id! : 0,
  );
}
