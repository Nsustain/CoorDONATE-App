// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RegisterResponse _$$_RegisterResponseFromJson(Map<String, dynamic> json) =>
    _$_RegisterResponse(
      status: json['status'] as String,
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_RegisterResponseToJson(_$_RegisterResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };
