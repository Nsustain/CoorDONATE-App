import 'package:flutter/material.dart';

class InputForm extends StatefulWidget {
  final Icon icon;
  final String inputboxplaceholder;
  final double width;
  final double height;
  final String type;
  final TextEditingController textInputController;

  const InputForm({
    Key? key,
    required this.icon,
    required this.inputboxplaceholder,
    required this.width,
    required this.type,
    required this.height,
    required this.textInputController,
  }) : super(key: key);

  @override
  State<InputForm> createState() => _InputFormState();
}

class _InputFormState extends State<InputForm> {
  String? _errorMessage;

  bool _isEmailValid(String value) {
    final emailRegExp = RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$');
    return emailRegExp.hasMatch(value);
  }

  bool _isNameValid(String value) {
    final nameRegExp = RegExp(r'^[a-zA-Z ]+$');
    return nameRegExp.hasMatch(value);
  }

  bool _isPasswordValid(String value) {
    final passwordRegExp = RegExp(r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$');
    return passwordRegExp.hasMatch(value);
  }

  void _validate(String? value) {
    setState(() {
      if (value == null || value.isEmpty) {
        _errorMessage = 'Please fill in the detail';
      } else if (widget.type == 'email' && !_isEmailValid(value)) {
        _errorMessage = 'Please enter a valid email';
      } else if (widget.type == 'name' && !_isNameValid(value)) {
        _errorMessage = 'Please enter a valid name';
      } else if (widget.type == 'password' && !_isPasswordValid(value)) {
        _errorMessage = 'Please enter a valid password';
      } else {
        _errorMessage = null;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: widget.width * 0.8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            controller: widget.textInputController,
            decoration: InputDecoration(
              prefixIcon: widget.icon,
              labelText: widget.inputboxplaceholder,
            ),
            onChanged: (value) {
              _validate(value);
            },
          ),
          if (_errorMessage != null)
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(
                _errorMessage!,
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 12.0,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
