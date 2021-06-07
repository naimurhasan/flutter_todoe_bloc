import 'package:flutter/material.dart';

class PrimaryTextField extends StatelessWidget {
  final int maxLength;
  final int maxLines;
  final String label;

  const PrimaryTextField({Key key, this.maxLength, this.maxLines, this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLength: maxLength,
      maxLines: maxLines,
      decoration: InputDecoration(
        labelText: label,
        hintText: label,
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.greenAccent, width: 5.0)),
      ),
    );
  }
}
