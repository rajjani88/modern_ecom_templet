import 'package:flutter/material.dart';

class InputPasswordField extends StatelessWidget {
  const InputPasswordField({
    super.key,
    required this.textCont,
    required this.hintText,
    required this.lblText,
  });

  final TextEditingController textCont;
  final String hintText;
  final String lblText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textCont,
      obscureText: true,
      decoration: InputDecoration(
          border: const OutlineInputBorder(),
          hintText: hintText,
          labelText: lblText),
      keyboardType: TextInputType.emailAddress,
    );
  }
}
