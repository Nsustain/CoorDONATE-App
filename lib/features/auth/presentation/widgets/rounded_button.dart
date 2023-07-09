import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final double width;
  final double height;
  final VoidCallback onPressed;
  final Widget childWidget;
  const RoundedButton(
      {Key? key,
      required this.width,
      required this.height,
      required this.onPressed,
      required this.childWidget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor:
            MaterialStateProperty.all(Theme.of(context).colorScheme.primary),
        minimumSize: MaterialStateProperty.all(
          Size(width * 0.6, height * 0.065),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        ),
      ),
      onPressed: onPressed,
      child: childWidget
    );
  }
}
