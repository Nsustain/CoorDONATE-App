// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PostModel _$$_PostModelFromJson(Map<String, dynamic> json) => _$_PostModel(
      postId: json['postId'] as String,
      postCreated: json['postCreated'] as String,
      postUserModel:
          PostUserModel.fromJson(json['postUserModel'] as Map<String, dynamic>),
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      postImageUrl: (json['postImageUrl'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      postText: json['postText'] as String?,
      like: json['like'] as int,
      comments: json['comments'] as int,
      bookMarked: json['bookMarked'] as bool,
      liked: json['liked'] as bool,
    );

Map<String, dynamic> _$$_PostModelToJson(_$_PostModel instance) =>
    <String, dynamic>{
      'postId': instance.postId,
      'postCreated': instance.postCreated,
      'postUserModel': instance.postUserModel,
      'tags': instance.tags,
      'postImageUrl': instance.postImageUrl,
      'postText': instance.postText,
      'like': instance.like,
      'comments': instance.comments,
      'bookMarked': instance.bookMarked,
      'liked': instance.liked,
    };
