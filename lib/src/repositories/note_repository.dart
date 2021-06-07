import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_todoebloc/src/constants.dart';
import 'package:flutter_todoebloc/src/models/note_model.dart';

class NoteRepository {
  // select database
  var _db = FirebaseFirestore.instance.collection(knoteDb);

  // Add a Note
  addNote(Note note) async {
    await _db.add(note.toJson());
  }

  // Get list of all Note
  Future<List<Note>> getNotes() async {
    var data = await _db.get();
    var notes = data.docs.map((note) => Note.fromJson(note.data())).toList();
    return notes;
  }
}
