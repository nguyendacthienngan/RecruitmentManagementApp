class Album {
  final int id;
  final String first_name;
  final String last_name;
  final String national_id;

  Album({this.id, this.first_name, this.last_name, this.national_id});

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
        id: json['id'],
        first_name: json['first_name'],
        last_name: json['last_name'],
        national_id: json['national_id']
    );
  }
}