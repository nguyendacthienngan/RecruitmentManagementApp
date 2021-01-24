import 'contact.model.dart';

class Employee {
  final int id;
  final String first_name;
  final String last_name;
  final int gender;
  final String birth_date;
  final String email;
  final String national_id;
  final String address;
  final int marital_status;
  Employee({
    this.id,
    this.first_name,
    this.last_name,
    this.national_id,
    this.gender,
    this.birth_date,
    this.email,
    this.address,
    this.marital_status,
  });

  factory Employee.fromJson(Map<String, dynamic> json) {
    return Employee(
        id: json['id'],
        first_name: json['first_name'],
        last_name: json['last_name'],
        national_id: json['national_id'],
        gender: json['gender'],
        birth_date: json['birth_date'],
        email: json['email'],
        address: json['address'],
        marital_status: json['marital_status'],
    );
  }
  factory Employee.fromMap(Map<String, dynamic> json) {
    return Employee(
      id: json['id'],
      first_name: json['first_name'],
      last_name: json['last_name'],
      national_id: json['national_id'],
      gender: json['gender'],
      birth_date: json['birth_date'],
      email: json['email'],
      address: json['address'],
      marital_status: json['marital_status'],
    );
  }
}