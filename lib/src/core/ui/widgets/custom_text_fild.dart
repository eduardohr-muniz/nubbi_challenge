import 'package:flutter/material.dart';

class CustomTextFild extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType? keyboardType;
  final String label;
  final String? hintText;
  final String? counterText;
  const CustomTextFild({
    Key? key,
    required this.controller,
    this.keyboardType,
    this.label = '',
    this.hintText,
    this.counterText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      cursorColor: Colors.blue,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        enabledBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.blue)),
        focusedBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.blue, width: 2)),
        counterText: counterText,
        label: Text(label),
        suffixIcon: IconButton(
          onPressed: () => controller.clear(),
          icon: const Icon(Icons.close),
        ),
        hintText: hintText,
        labelStyle: const TextStyle(color: Colors.blue),
        filled: true,
        isDense: true,
        fillColor: Colors.blue.withOpacity(0.1),
      ),
    );
  }
}
