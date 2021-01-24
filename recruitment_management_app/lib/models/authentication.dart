class Authentication {
  final String message;
  final int employee_id;
  final int role;

  Authentication({this.message, this.employee_id, this.role});

  factory Authentication.fromJson(Map<String, dynamic> json) {
    return Authentication(
      message: json['message'],
      employee_id: json['employee_id'],
      role: json['role'],
    );
  }
  factory Authentication.fromMap(Map<String, dynamic> json) {
    return Authentication(
        message: json['message'],
        employee_id: json['employee_id'],
        role: json['role'],
    );
  }
}