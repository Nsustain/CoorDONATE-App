// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'like_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LikeModel _$$_LikeModelFromJson(Map<String, dynamic> json) => _$_LikeModel(
      id: json['id'] as String,
      postId: json['postId'] as String,
      userId: json['userId'] as String,
      userName: json['userName'] as String,
      userProfileImageUrl: json['userProfileImageUrl'] as String?,
      timestamp: json['timestamp'] as String,
    );

Map<String, dynamic> _$$_LikeModelToJson(_$_LikeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'postId': instance.postId,
      'userId': instance.userId,
      'userName': instance.userName,
      'userProfileImageUrl': instance.userProfileImageUrl,
      'timestamp': instance.timestamp,
    };
