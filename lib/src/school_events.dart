class SchoolEvents {
  String title;
  String body;

  SchoolEvents({this.title, this.body});

  SchoolEvents.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    body = json['body'];
  }


}