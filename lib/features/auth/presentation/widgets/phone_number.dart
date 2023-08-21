import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class PhoneNumber extends StatefulWidget {
  const PhoneNumber({super.key, required this.controller});
  final TextEditingController controller;

  @override
  State<PhoneNumber> createState() => _PhoneNumberState();
}

class _PhoneNumberState extends State<PhoneNumber> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: double.infinity),
      child: IntlPhoneField(
        decoration: const InputDecoration(
          labelText: 'Phone Number',
        ),
        controller: widget.controller,
        initialCountryCode: 'ET',
      ),
    );
  }
}
