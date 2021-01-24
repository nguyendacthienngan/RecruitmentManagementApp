class TimeOff {
  final int timeoff_id;
  final int leave_type;
  final String day_off;
  final int event_status;
  final String announcement;
  final String start_date;
  final String end_date;


  TimeOff({this.timeoff_id, this.leave_type, this.day_off, this.event_status,this.announcement,this.end_date,this.start_date});

  factory TimeOff.fromJson(Map<String, dynamic> json) {
    return TimeOff(
      timeoff_id: json['timeoff_id'],
      leave_type: json['leave_type'],
      day_off: json['day_off'],
      event_status: json['event_status'],
      announcement: json['announcement'],
      start_date: json['start_date'],
      end_date: json['end_date'],
    );
  }
  factory TimeOff.fromMap(Map<String, dynamic> json) {
    return TimeOff(
      timeoff_id: json['timeoff_id'],
      leave_type: json['leave_type'],
      day_off: json['day_off'],
      event_status: json['event_status'],
      announcement: json['announcement'],
      start_date: json['start_date'],
      end_date: json['end_date'],
    );
  }
}