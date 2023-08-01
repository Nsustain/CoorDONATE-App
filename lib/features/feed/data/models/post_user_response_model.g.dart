// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_user_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$PostUserModelToJson(PostUserModel instance) =>
    <String, dynamic>{
      'fullname': instance.fullname,
      'username': instance.username,
      'profileImageUrl': instance.profileImageUrl,
      'isVerified': instance.isVerified,
      'email': instance.email,
      'role': instance.role,
      'id': instance.id,
    };

_$_PostUserModel _$$_PostUserModelFromJson(Map<String, dynamic> json) =>
    _$_PostUserModel(
      fullname: json['fullname'] as String,
      username: json['username'] as String,
      profileImageUrl: json['profileImageUrl'] as String,
      isVerified: json['isVerified'] as bool,
      email: json['email'] as String,
      role: json['role'] as String,
      id: json['id'] as int,
    );

Map<String, dynamic> _$$_PostUserModelToJson(_$_PostUserModel instance) =>
    <String, dynamic>{
      'fullname': instance.fullname,
      'username': instance.username,
      'profileImageUrl': instance.profileImageUrl,
      'isVerified': instance.isVerified,
      'email': instance.email,
      'role': instance.role,
      'id': instance.id,
    };
