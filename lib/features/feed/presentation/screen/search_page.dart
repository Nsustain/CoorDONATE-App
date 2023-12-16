import 'package:coordonate_app/features/feed/presentation/widgets/post_reactions.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: PostReactions(),
      ),
    );
  }
}
