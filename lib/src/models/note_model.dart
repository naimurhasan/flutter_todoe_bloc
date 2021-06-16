class Note {
  String id;
  String title;
  String details;

  Note(this.title, this.details, {this.id = null});

  factory Note.fromJson(Map<String, dynamic> json, {String id}) =>
      Note(json['title'], json['details'], id: id);

  Map<String, dynamic> toJson() => {"title": title, "details": details};
}
