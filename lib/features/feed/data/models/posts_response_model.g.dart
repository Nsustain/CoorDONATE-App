// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'posts_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Posts _$$_PostsFromJson(Map<String, dynamic> json) => _$_Posts(
      posts: (json['posts'] as List<dynamic>?)
          ?.map((e) => PostModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PostsToJson(_$_Posts instance) => <String, dynamic>{
      'posts': instance.posts,
    };
