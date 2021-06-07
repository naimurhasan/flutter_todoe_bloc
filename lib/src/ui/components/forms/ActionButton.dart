import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final String text;

  const ActionButton(
    this.text, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: () {}, child: Text(text));
  }
}
