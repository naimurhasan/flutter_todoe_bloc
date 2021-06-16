import 'package:flutter/material.dart';

// on change param help for ide
typedef onChangeType = void Function(String value);

class PrimaryTextField extends StatelessWidget {
  final int maxLength;
  final int maxLines;
  final String label;
  final onChangeType onChnage;

  const PrimaryTextField(
      {Key key, this.maxLength, this.maxLines, this.label, this.onChnage})
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
      onChanged: onChnage,
    );
  }
}
