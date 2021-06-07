class Note {
  String title;
  String details;

  Note(this.title, this.details);

  factory Note.fromJson(Map<String, dynamic> json) =>
      Note(json['title'], json['details']);

  Map<String, dynamic> toJson() => {"title": title, "details": details};
}
