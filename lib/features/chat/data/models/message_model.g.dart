// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChatMessageModel _$$_ChatMessageModelFromJson(Map<String, dynamic> json) =>
    _$_ChatMessageModel(
      msg: json['msg'] as String?,
      time:
          json['time'] == null ? null : DateTime.parse(json['time'] as String),
      type: json['type'] as String?,
    );

Map<String, dynamic> _$$_ChatMessageModelToJson(_$_ChatMessageModel instance) =>
    <String, dynamic>{
      'msg': instance.msg,
      'time': instance.time?.toIso8601String(),
      'type': instance.type,
    };
