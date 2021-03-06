import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_todoebloc/src/blocs/note/note_bloc.dart';
import 'package:flutter_todoebloc/src/blocs/note/note_event.dart';
import 'package:flutter_todoebloc/src/models/note_model.dart';

import '../../../constants.dart';

class NoteCardView extends StatelessWidget {
  final Note note;

  const NoteCardView(this.note, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onLongPress: () {
        showDialog(
            context: context,
            builder: (_) => AlertDialog(
                  title: ElevatedButton(
                    onPressed: () {
                      BlocProvider.of<NoteBloc>(context)
                          .add(DeleteEvent(note.id));
                      Navigator.pop(context);
                    },
                    child: Text('Delete Note'),
                  ),
                ));
      },
      child: Card(
          elevation: 2.0,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /************* TITLE ******************/
                Container(
                    child: Text(
                  note.title,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context)
                      .textTheme
                      .headline5
                      .copyWith(color: Color(kprimaryColor)),
                )),
                /************* DETAILS ******************/
                Container(
                  margin: const EdgeInsets.only(top: 2.0),
                  child: Text(
                    note.details,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 5,
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
