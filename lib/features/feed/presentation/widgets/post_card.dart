import 'package:coordonate_app/features/feed/presentation/widgets/post.dart';
import 'package:coordonate_app/features/feed/presentation/widgets/post_user.dart';
import 'package:flutter/material.dart';

class PostCard extends StatefulWidget {
  const PostCard({
    super.key,
  });

  @override
  State<PostCard> createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PostUser(),
        Post(),
      ],
    );
  }
}
