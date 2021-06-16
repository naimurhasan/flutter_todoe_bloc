import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_todoebloc/src/blocs/note/note_bloc.dart';
import 'package:flutter_todoebloc/src/blocs/note/note_event.dart';
import 'package:flutter_todoebloc/src/blocs/note/note_states.dart';
import 'package:flutter_todoebloc/src/ui/components/note/note_card_view.dart';
import 'package:flutter_todoebloc/src/ui/components/note/two_col_grid_view.dart';
import 'package:flutter_todoebloc/src/ui/screens/AddNoteScreen.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    BlocProvider.of<NoteBloc>(context).add(GetAllEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print('HOME SCREEN RENDERED');

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: BlocBuilder<NoteBloc, NoteStates>(
        builder: (context, state) {
          if (state is LoadingState) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }

          if (state is GetAllState) {
            return TwoColumnGridView(
              itemCount: state.notes.length,
              itemBuilder: (BuildContext context, index) {
                return NoteCardView(state.notes[index]);
              },
            );
          }

          return Center(child: Text("Notes shown here..."));
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
