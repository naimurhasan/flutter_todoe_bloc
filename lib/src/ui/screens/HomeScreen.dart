import 'package:flutter/material.dart';
import 'package:flutter_todoebloc/src/models/note_model.dart';
import 'file:///C:/src/flutter_apps/flutter_todoebloc/lib/src/ui/components/note/note_card_view.dart';
import 'file:///C:/src/flutter_apps/flutter_todoebloc/lib/src/ui/components/note/two_col_grid_view.dart';
import 'package:flutter_todoebloc/src/ui/screens/AddNoteScreen.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: TwoColumnGridView(
        itemBuilder: (BuildContext context, index) {
          return NoteCardView(Note("Note Tile", "This is the Note Details"));
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showNoteForm(context),
        tooltip: 'Add',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  void _showNoteForm(ctx) {
    showModalBottomSheet<void>(
      context: ctx,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return AddNoteScreen();
      },
    );
  }
}
