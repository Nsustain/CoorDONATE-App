// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PostModel _$$_PostModelFromJson(Map<String, dynamic> json) => _$_PostModel(
      id: json['id'] as int,
      postCreated: json['postCreated'] as String?,
      postedBy:
          PostUserModel.fromJson(json['postedBy'] as Map<String, dynamic>),
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      contentText: json['contentText'] as String?,
      likes: (json['likes'] as List<dynamic>)
          .map((e) => LikeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      comments: (json['comments'] as List<dynamic>)
          .map((e) => CommentModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      bookMarked: json['bookMarked'] as bool?,
      liked: json['liked'] as bool?,
    );

Map<String, dynamic> _$$_PostModelToJson(_$_PostModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'postCreated': instance.postCreated,
      'postedBy': instance.postedBy,
      'tags': instance.tags,
      'images': instance.images,
      'contentText': instance.contentText,
      'likes': instance.likes,
      'comments': instance.comments,
      'bookMarked': instance.bookMarked,
      'liked': instance.liked,
    };
