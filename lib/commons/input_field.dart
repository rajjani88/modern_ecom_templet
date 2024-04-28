import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  const InputField({
    super.key,
    required this.textCont,
    required this.hintText,
    required this.lblText,
    this.inputType = TextInputType.text,
  });

  final TextEditingController textCont;
  final String hintText;
  final String lblText;
  final TextInputType inputType;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textCont,
      decoration: InputDecoration(
          border: const OutlineInputBorder(),
          hintText: hintText,
          labelText: lblText),
      keyboardType: inputType,
    );
  }
}
