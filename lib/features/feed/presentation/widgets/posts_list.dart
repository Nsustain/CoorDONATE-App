import 'package:coordonate_app/features/feed/domain/entities/posts_entity.dart';
import 'package:coordonate_app/features/feed/presentation/widgets/post_card.dart';
import 'package:flutter/material.dart';

class PostsList extends StatefulWidget {
  final PostsEntity postsEntity;
  const PostsList({super.key, required this.postsEntity});

  @override
  State<PostsList> createState() => PostsListState();
}

class PostsListState extends State<PostsList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: widget.postsEntity.posts!.length,
        itemBuilder: (context, index) {
          return PostCard(
              postUserEntity: widget.postsEntity.posts![index].postUserEntity,
              postEntity: widget.postsEntity.posts![index]);
        });
  }
}
