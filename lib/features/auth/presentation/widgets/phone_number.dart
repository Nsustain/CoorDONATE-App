import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class PhoneNumber extends StatefulWidget {
  const PhoneNumber({super.key, required this.controller, required this.width});
  final TextEditingController controller;
  final double width;

  @override
  State<PhoneNumber> createState() => _PhoneNumberState();
}

class _PhoneNumberState extends State<PhoneNumber> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: widget.width * 0.8),
      child: IntlPhoneField(
        decoration: InputDecoration(
          labelText: 'Phone Number',
        ),
        controller: widget.controller,
        initialCountryCode: 'ET',
      ),
    );
  }
}
