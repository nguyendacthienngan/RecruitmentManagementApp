class Employee {
  final int userId;
  Employee(this.userId);

  factory Employee.fromMap(Map<String, dynamic> json) {
    return Employee(json['userId']);
  }
  factory Employee.fromJson(Map<String, dynamic> json) {
    return Employee(json['userId']);
  }
}