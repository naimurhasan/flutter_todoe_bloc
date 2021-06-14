import 'package:flutter/material.dart';
import 'package:flutter_todoebloc/src/ui/components/forms/ActionButton.dart';
import 'package:flutter_todoebloc/src/ui/components/forms/PrimaryTextField.dart';

class AddNoteScreen extends StatelessWidget {
  String _name;
  String _details;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
      color: Color(0xFF737373),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15.0),
              topRight: Radius.circular(15.0),
            )),
        child: Column(
          children: [
            PrimaryTextField(
              label: "Name",
              maxLines: 1,
              maxLength: 50,
            ),
            PrimaryTextField(
              label: "Details",
              maxLines: 2,
              maxLength: 500,
            ),
            ActionButton(" Add ")
          ],
        ),
      ),
    );
  }

  _onAddTap() {}
}
