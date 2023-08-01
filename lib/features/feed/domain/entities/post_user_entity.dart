import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_user_entity.freezed.dart';

@freezed
class PostUserEntity with _$PostUserEntity {
  const factory PostUserEntity({
    required String fullname,
    required String username,
    required String profileImageUrl,
    required bool isVerified,
    required String email,
    required String role,
    required int id,
  }) = _PostUserEntity;
}
