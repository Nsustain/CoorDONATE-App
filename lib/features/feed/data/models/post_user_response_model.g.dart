// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_user_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************



Map<String, dynamic> _$PostUserModelToJson(PostUserModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'username': instance.username,
      'photo': instance.photo,
      'verified': instance.verified,
      'email': instance.email,
      'role': instance.role,
      'id': instance.id,
    };

_$_PostUserModel _$$_PostUserModelFromJson(Map<String, dynamic> json) =>
    _$_PostUserModel(
      name: json['name'] as String?,
      username: json['username'] as String?,
      photo: json['photo'] as String?,
      verified: json['verified'] as String?,
      email: json['email'] as String?,
      role: json['role'] as String?,
      id: json['id'] as int?,
    );

Map<String, dynamic> _$$_PostUserModelToJson(_$_PostUserModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'username': instance.username,
      'photo': instance.photo,
      'verified': instance.verified,
      'email': instance.email,
      'role': instance.role,
      'id': instance.id,
    };
