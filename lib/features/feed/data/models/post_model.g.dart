// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PostModel _$$_PostModelFromJson(Map<String, dynamic> json) => _$_PostModel(
      id: json['id'] as int,
      postCreated: json['postCreated'] as String?,
      user: PostUserModel.fromJson(json['user'] as Map<String, dynamic>),
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      text: json['text'] as String?,
      likes: json['likes'] as int,
      comments: json['comments'] as int,
      bookMarked: json['bookMarked'] as bool?,
      liked: json['liked'] as bool?,
    );

Map<String, dynamic> _$$_PostModelToJson(_$_PostModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'postCreated': instance.postCreated,
      'user': instance.user,
      'tags': instance.tags,
      'images': instance.images,
      'text': instance.text,
      'likes': instance.likes,
      'comments': instance.comments,
      'bookMarked': instance.bookMarked,
      'liked': instance.liked,
    };
