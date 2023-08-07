import 'package:coordonate_app/features/feed/domain/entities/post_entity.dart';
import 'package:coordonate_app/features/feed/presentation/widgets/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Post extends StatefulWidget {
  final bool isExpanded = false;
  final PostEntity postEntity;
  const Post({super.key, required this.postEntity});

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 20.h, bottom: 10.h),
          child: SizedBox(
            width: double.infinity,
            child: widget.postEntity.postText!.length > 50
                ? ExpandableText(text: widget.postEntity.postText!)
                : Text('${widget.postEntity.postText}'),
          ),
        ),
        // Image.network(
        //   '${widget.postEntity.postImageUrl![0]}',
        // )
        Image.asset('assets/images/feeds/nelson-mandela.jpg')
      ],
    );
  }
}
