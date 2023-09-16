import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExpandableText extends StatefulWidget {
  ExpandableText({required this.text});

  final String text;
  bool isExpanded = false;

  @override
  _ExpandableTextState createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText>
    with TickerProviderStateMixin<ExpandableText> {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      AnimatedSize(
        duration: const Duration(milliseconds: 200),
        child: ConstrainedBox(
          constraints: widget.isExpanded
              ? BoxConstraints()
              : BoxConstraints(maxHeight: 58.h),
          child: Text(
            widget.text,
            softWrap: true,
            overflow: TextOverflow.fade,
          ),
        ),
      ),
      Row(
        children: [
          Expanded(
            child: Container(),
          ),
          widget.isExpanded
              ? TextButton(
                  child: const Text('...see less'),
                  onPressed: () =>
                      setState(() => widget.isExpanded = !widget.isExpanded),
                )
              : TextButton(
                  child: const Text('...see more'),
                  onPressed: () =>
                      setState(() => widget.isExpanded = !widget.isExpanded),
                ),
        ],
      )
    ]);
  }
}
