import 'package:flutter/material.dart';

class ReactionResults extends StatefulWidget {
  final int likes = 0;
  final int comments = 0;
  const ReactionResults({super.key, likes, comments});

  @override
  State<ReactionResults> createState() => _ReactionResultsState();
}

class _ReactionResultsState extends State<ReactionResults> {
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      if (widget.likes != 0)
        Row(
          children: [Icon(Icons.thumb_up_sharp), Text("$widget.likes")],
        ),
      Expanded(
        child: Text(''),
      ),
      if (widget.comments != 0)
        Row(
          children: [
            Text("${widget.comments} comments"),
          ],
        )
    ]);
  }
}
