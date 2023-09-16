// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CommentModel _$$_CommentModelFromJson(Map<String, dynamic> json) =>
    _$_CommentModel(
      id: json['id'] as String,
      postId: json['postId'] as String,
      text: json['text'] as String,
      authorId: json['authorId'] as String,
      authorName: json['authorName'] as String,
      authorProfileImageUrl: json['authorProfileImageUrl'] as String?,
      timestamp: json['timestamp'] as String?,
    );

Map<String, dynamic> _$$_CommentModelToJson(_$_CommentModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'postId': instance.postId,
      'text': instance.text,
      'authorId': instance.authorId,
      'authorName': instance.authorName,
      'authorProfileImageUrl': instance.authorProfileImageUrl,
      'timestamp': instance.timestamp,
    };
