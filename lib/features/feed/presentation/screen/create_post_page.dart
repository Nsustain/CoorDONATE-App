import 'package:coordonate_app/dependency_injection.dart';
import 'package:coordonate_app/features/feed/presentation/widgets/create_post_widgets/poster.dart';
import 'package:coordonate_app/utils/helper/helper.dart';
import 'package:flutter/material.dart';

class CreatePostPage extends StatelessWidget {
  var prefManager = sl<PrefManager>();
  CreatePostPage({required this.prefManager, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('Top'),
          Poster(
              userName: prefManager.userProfileName,
              userPhoto: prefManager.userProfilePhoto),
          Text('Bottom')
        ],
      ),
    );
  }
}
