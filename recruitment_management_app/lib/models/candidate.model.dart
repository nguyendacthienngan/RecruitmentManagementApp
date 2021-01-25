class Candidate
{
  final int candidate_id;
  final String first_name;
  final String last_name;
  final String national_id;
  final int employ_type;
  final int position;
  final String birth_date;
  final int gender;
  final int candidate_status;
  final String email;

  Candidate({this.candidate_id, this.first_name, this.last_name, this.national_id,
  this.employ_type, this.position, this.birth_date, this.gender, this.candidate_status,
  this.email});
  factory Candidate.fromJson(Map<String, dynamic> json) {
    return Candidate(
      candidate_id: json['id'],
      first_name: json['first_name'],
      last_name: json['last_name'],
      national_id: json['national_id'],
      gender: json['gender'],
      birth_date: json['birth_date'],
      email: json['email'],
      position: json['position'],
      candidate_status: json['candidate_status'],
    );
  }
  factory Candidate.fromMap(Map<String, dynamic> json) {
    return Candidate(
      candidate_id: json['id'],
      first_name: json['first_name'],
      last_name: json['last_name'],
      national_id: json['national_id'],
      gender: json['gender'],
      birth_date: json['birth_date'],
      email: json['email'],
      position: json['position'],
      candidate_status: json['candidate_status'],
    );
  }
}