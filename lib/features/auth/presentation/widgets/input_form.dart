import 'package:flutter/material.dart';

class InputForm extends StatefulWidget {
  final Icon icon;
  final String inputboxplaceholder;
  final double width;
  final String type;
  const InputForm(
      {Key? key,
      required this.icon,
      required this.inputboxplaceholder,
      required this.width,
      required this.type})
      : super(key: key);

  @override
  State<InputForm> createState() => _InputFormState();
}

class _InputFormState extends State<InputForm> {
  final _textInputController = TextEditingController();
  final _formkey = GlobalKey<FormState>();

  String? _validate(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please fill in the detail';
    }

    if (widget.type == 'email') {
      final emailRegExp = RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$');
      if (!emailRegExp.hasMatch(value)) {
        return 'Please enter a valid email';
      }
    } else if (widget.type == 'name') {
      final nameRegExp = RegExp(r'^[a-zA-Z ]+$');
      if (!nameRegExp.hasMatch(value)) {
        return 'Please enter a valid name';
      }
    } else if (widget.type == 'phone') {
      final phoneRegExp = RegExp(r'^\d{10}$');
      if (!phoneRegExp.hasMatch(value)) {
        return 'Please enter a valid phone number';
      }
    }

    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Container(
        constraints: BoxConstraints(maxWidth: widget.width * 0.8),
        child: TextFormField(
          controller: _textInputController,
          decoration: InputDecoration(
            prefixIcon: widget.icon,
            labelText: widget.inputboxplaceholder,
          ),
          validator: _validate,
          onSaved: (newValue) {},
        ),
      ),
    );
  }
}
