// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$MessageModelToJson(MessageModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'recipientId': instance.recipientId,
      'senderId': instance.senderId,
      'content': instance.content,
      'time': instance.time?.toIso8601String(),
      'isGroup': instance.isGroup,
      'status': instance.status,
    };

_$_MessageModel _$$_MessageModelFromJson(Map<String, dynamic> json) =>
    _$_MessageModel(
      id: json['id'] as String?,
      recipientId: json['recipientId'] as String?,
      senderId: json['senderId'] as String?,
      content: json['content'] as String?,
      time:
          json['time'] == null ? null : DateTime.parse(json['time'] as String),
      isGroup: json['isGroup'] as bool?,
      status: json['status'] as bool?,
    );

Map<String, dynamic> _$$_MessageModelToJson(_$_MessageModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'recipientId': instance.recipientId,
      'senderId': instance.senderId,
      'content': instance.content,
      'time': instance.time?.toIso8601String(),
      'isGroup': instance.isGroup,
      'status': instance.status,
    };
