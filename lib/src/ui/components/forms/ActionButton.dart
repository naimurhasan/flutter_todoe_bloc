import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final String text;
  final Function onTap;

  const ActionButton(
    this.text, {
    Key key,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
          padding: const EdgeInsets.all(0.0),
          minimumSize: Size(0.0, 0.0),
        ),
        onPressed: () {
          if (onTap != null) onTap();
        },
        child: Ink(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 148, 231, 225),
              Color.fromARGB(255, 62, 182, 226)
            ]),
            borderRadius: BorderRadius.all(Radius.circular(80.0)),
          ),
          child: Container(
            constraints: BoxConstraints(minWidth: 95.0, minHeight: 40.0),
            padding: const EdgeInsets.only(top: 12.0),
            child: Text(
              this.text,
              textAlign: TextAlign.center,
            ),
          ),
        ));
  }
}
