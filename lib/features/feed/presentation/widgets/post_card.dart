import 'package:coordonate_app/features/feed/domain/entities/post_entity.dart';
import 'package:coordonate_app/features/feed/domain/entities/post_user_entity.dart';
import 'package:coordonate_app/features/feed/presentation/widgets/post.dart';
import 'package:coordonate_app/features/feed/presentation/widgets/post_reactions.dart';
import 'package:coordonate_app/features/feed/presentation/widgets/post_user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PostCard extends StatefulWidget {
  final PostUserEntity postUserEntity;
  final PostEntity postEntity;
  const PostCard(
      {super.key, required this.postUserEntity, required this.postEntity});

  @override
  State<PostCard> createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PostUser(
          postUserEntity: widget.postUserEntity,
          postCreated: widget.postEntity.postCreated!,
        ),
        Post(
          postEntity: widget.postEntity,
        ),
        PostReactions(),
        SizedBox(
          height: 20.h,
        ),
      ],
    );
  }
}
