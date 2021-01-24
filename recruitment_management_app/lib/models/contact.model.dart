class Contact {
  final int phone_id;
  final String emergency_call;
  final String personal_call;

  Contact(
    {
      this.phone_id,
      this.emergency_call,
      this.personal_call
    }
  );

  factory Contact.fromJson(Map<String, dynamic> json) {
    return Contact(
      phone_id: json['phone_id'],
      emergency_call: json['emergency_call'],
      personal_call: json['personal_call'],

    );
  }

  factory Contact.fromMap(Map<String, dynamic> json) {
    return Contact(
      phone_id: json['phone_id'],
      emergency_call: json['emergency_call'],
      personal_call: json['personal_call'],

    );
  }
}