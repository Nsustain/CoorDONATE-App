// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_register.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RegisterParams _$$_RegisterParamsFromJson(Map<String, dynamic> json) =>
    _$_RegisterParams(
      email: json['email'] as String? ?? "",
      password: json['password'] as String? ?? "",
      phoneNumber: json['phoneNumber'] as String? ?? "",
      name: json['name'] as String? ?? "",
    );

Map<String, dynamic> _$$_RegisterParamsToJson(_$_RegisterParams instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'phoneNumber': instance.phoneNumber,
      'name': instance.name,
    };
