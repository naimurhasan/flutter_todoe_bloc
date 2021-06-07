import 'package:flutter/material.dart';
import 'package:flutter_todoebloc/src/models/note_model.dart';

class NoteCardView extends StatelessWidget {
  final Note note;

  const NoteCardView(this.note, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      child: Text("${note.title}"),
    );
  }
}
