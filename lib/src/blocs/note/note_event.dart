abstract class NoteEvents {}

// Add
class AddEvent extends NoteEvents {
  String title;
  String details;
  AddEvent({this.title, this.details});
}

// Get All
class GetAllEvent extends NoteEvents {}
