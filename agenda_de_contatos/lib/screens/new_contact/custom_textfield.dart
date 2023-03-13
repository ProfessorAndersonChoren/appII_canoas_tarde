import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final String label;
  final TextInputType keyboardType;
  final TextEditingController controller;
  final String? Function(String? value) validator;

  const CustomTextField({
    super.key,
    required this.label,
    required this.controller,
    required this.validator,
    this.keyboardType = TextInputType.text,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: TextFormField(
        decoration: InputDecoration(
          label: Text(
            widget.label,
          ),
          border: const OutlineInputBorder(),
        ),
        keyboardType: widget.keyboardType,
        validator: widget.validator,
      ),
    );
  }
}
