import 'package:coordonate_app/features/feed/presentation/widgets/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Post extends StatefulWidget {
  final bool isExpanded = false;
  const Post({super.key});

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  final String postText =
      'Adipisicing eu esse exercitation laborum eiusmod minim laborum consectetur. Amet adipisicing commodo ad eu eiusmod nisi cillum. Officia voluptate quis consequat mollit culpa culpa nulla enim laboris aute non ullamco exercitation. Exercitation Lorem eiusmod reprehenderit consectetur tempor culpa ad. Fugiat exercitation sunt cupidatat reprehenderit ad. Quis sunt amet dolor do nostrud.';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 20.h),
          child: SizedBox(
            width: double.infinity,
            child: postText.length > 50
                ? ExpandableText(text: postText)
                : Text('$postText'),
          ),
        ),
        Image.asset('assets/images/feeds/nelson-observer.jpg'),
      ],
    );
  }
}
