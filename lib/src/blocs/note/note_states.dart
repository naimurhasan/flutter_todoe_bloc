import 'package:flutter_todoebloc/src/models/note_model.dart';

abstract class NoteStates {}

class InitState extends NoteStates {}

class LoadingState extends NoteStates {}

class AddState extends NoteStates {}

class GetAllState extends NoteStates {
  List<Note> notes;
  GetAllState(this.notes);
}
