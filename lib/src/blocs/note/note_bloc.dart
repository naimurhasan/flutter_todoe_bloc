import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_todoebloc/src/blocs/note/note_event.dart';
import 'package:flutter_todoebloc/src/blocs/note/note_states.dart';
import 'package:flutter_todoebloc/src/models/note_model.dart';
import 'package:flutter_todoebloc/src/repositories/note_repository.dart';

class NoteBloc extends Bloc<NoteEvents, NoteStates> {
  NoteRepository repo;

  NoteBloc(NoteStates initialState, this.repo) : super(initialState);

  @override
  Stream<NoteStates> mapEventToState(NoteEvents event) async* {
    // GET ALL EVENT RECIVED
    if (event is GetAllEvent) {
      yield LoadingState();
      var notes = await repo.getNotes();
      yield GetAllState(notes);
    } else if (event is AddEvent) {
      yield LoadingState();
      // ADD NOTE EVENT RECEIVED
      await repo.addNote(Note(event.title, event.details));
      yield GetAllState(await repo.getNotes());
    } else if (event is DeleteEvent) {
      yield LoadingState();
      // delte
      await repo.deleteNote(event.docId);
      // get all state
      var notes = await repo.getNotes();
      yield GetAllState(notes);
    }
  }
}
