// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChatModel _$$_ChatModelFromJson(Map<String, dynamic> json) => _$_ChatModel(
      id: json['id'] as String?,
      senderName: json['senderName'] as String?,
      recipientName: json['recipientName'] as String?,
      msg: ChatMessageModel.fromJson(json['msg'] as Map<String, dynamic>),
      time:
          json['time'] == null ? null : DateTime.parse(json['time'] as String),
      icon: json['icon'] as String?,
      selected: json['selected'] as bool?,
      status: json['status'] as bool?,
      isGroup: json['isGroup'] as bool?,
    );

Map<String, dynamic> _$$_ChatModelToJson(_$_ChatModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'senderName': instance.senderName,
      'recipientName': instance.recipientName,
      'msg': instance.msg,
      'time': instance.time?.toIso8601String(),
      'icon': instance.icon,
      'selected': instance.selected,
      'status': instance.status,
      'isGroup': instance.isGroup,
    };
