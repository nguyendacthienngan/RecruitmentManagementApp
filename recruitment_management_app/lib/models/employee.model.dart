class Employee {
  final int id;
  final String first_name;
  final String last_name;
  final String national_id;

  Employee({this.id, this.first_name, this.last_name, this.national_id});

  factory Employee.fromJson(Map<String, dynamic> json) {
    return Employee(
        id: json['id'],
        first_name: json['first_name'],
        last_name: json['last_name'],
        national_id: json['national_id']
    );
  }
  factory Employee.fromMap(Map<String, dynamic> json) {
    return Employee(
        id: json['id'],
        first_name: json['first_name'],
        last_name: json['last_name'],
        national_id: json['national_id']
    );
  }
}