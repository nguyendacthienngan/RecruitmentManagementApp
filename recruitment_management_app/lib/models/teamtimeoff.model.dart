class TeamTimeOff {
  final int timeoff_id;
  final int leave_type;
  final String day_off;
  final int event_status;
  final String announcement;
  final String start_date;
  final String end_date;
  final int employee_id;
  final String team_name;
  final String first_name;
  final String last_name;
  final String title_name;
  final String event_name;


  TeamTimeOff(
      {this.timeoff_id, this.leave_type, this.day_off, this.event_status, this.announcement, this.end_date, this.start_date, this.employee_id,
        this.team_name, this.first_name, this.event_name, this.last_name, this.title_name});

  factory TeamTimeOff.fromJson(Map<String, dynamic> json) {
    return TeamTimeOff(
        timeoff_id: json['timeoff_id'],
        leave_type: json['leave_type'],
        day_off: json['day_off'],
        event_status: json['event_status'],
        announcement: json['announcement'],
        start_date: json['start_date'],
        end_date: json['end_date'],
        employee_id: json['employee_id'],
        first_name: json['first_name'],
        last_name: json['last_name'],
        title_name: json['title_name'],
        event_name: json['event_name'],
        team_name: json['team_name']
    );
  }

  factory TeamTimeOff.fromMap(Map<String, dynamic> json) {
    return TeamTimeOff(
        timeoff_id: json['timeoff_id'],
        leave_type: json['leave_type'],
        day_off: json['day_off'],
        event_status: json['event_status'],
        announcement: json['announcement'],
        start_date: json['start_date'],
        end_date: json['end_date'],
        employee_id: json['employee_id'],
        first_name: json['first_name'],
        last_name: json['last_name'],
        title_name: json['title_name'],
        event_name: json['event_name'],
        team_name: json['team_name']
    );
  }
}