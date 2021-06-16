abstract class NoteEvents {}

// Add
class AddEvent extends NoteEvents {
  String title;
  String details;
  AddEvent({this.title, this.details});
}

// Delete a Note
class DeleteEvent extends NoteEvents {
  String docId;
  DeleteEvent(this.docId);
}

// Get All
class GetAllEvent extends NoteEvents {}
