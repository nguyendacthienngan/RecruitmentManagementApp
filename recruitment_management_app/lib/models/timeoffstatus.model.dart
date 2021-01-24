import 'package:recruitment_management_app/models/teamtimeoff.model.dart';

class TimeOffStatus{
  final List<TeamTimeOff> approved;
  final List<TeamTimeOff> pending;
 TimeOffStatus({this.approved,this.pending});


  factory TimeOffStatus.fromJson(Map<String, dynamic> json) {
    var listapproved = json['approved'] as List;
    print(listapproved.runtimeType);
    List<TeamTimeOff> approvedList = listapproved.map((i) => TeamTimeOff.fromJson(i)).toList();
    var listpending = json['pending'] as List;
    print(listpending.runtimeType);
    List<TeamTimeOff> pendingList = listpending.map((i) => TeamTimeOff.fromJson(i)).toList();
    return TimeOffStatus(
      approved: approvedList,
      pending: pendingList,
    );
  }
  factory TimeOffStatus.fromMap(Map<String, dynamic> json) {
    var listapproved = json['approved'] as List;
    print(listapproved.runtimeType);
    List<TeamTimeOff> approvedList = listapproved.map((i) => TeamTimeOff.fromJson(i)).toList();
    var listpending = json['approved'] as List;
    print(listpending.runtimeType);
    List<TeamTimeOff> pendingList = listpending.map((i) => TeamTimeOff.fromJson(i)).toList();
    return TimeOffStatus(
      approved: approvedList,
      pending: pendingList,
    );
  }
}