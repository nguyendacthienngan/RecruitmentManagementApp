import 'dart:convert';
import 'dart:async';
import 'package:recruitment_management_app/models/teamtimeoff.model.dart';
import 'package:recruitment_management_app/models/timeoff.model.dart';
import 'package:recruitment_management_app/models/timeoffstatus.model.dart';
import 'package:http/http.dart' as http;
import 'package:recruitment_management_app/constants.dart';
import 'package:recruitment_management_app/globals.dart' as globals;

String url = root + "local-events-timeoff/search/individual/";
Future<List<TimeOff>> fetchTimeOffs() async {
  final response = await http.get(url + "1");
  if (response.statusCode == 200) {
    return decodeTimeOffs(response.body);
  } else {
    throw Exception('Failed to load employee');
  }
}
List<TimeOff> decodeTimeOffs(String responseBody) {
  final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
  return parsed.map<TimeOff>((json) => TimeOff.fromMap(json)).toList();
}
Future<TimeOff> addTimeOff(TimeOff item) async {
  Map data={
    'event_name': 'Timeoff',
    'leave_type_id': 1,//item.leave_type,
    'day_off': item.day_off,
    'announcement': 'Time Off',
    'start_date': item.start_date,
    'end_date': item.end_date,
    'employee_id': 1,//globals.employeeID,
  };
  final http.Response response = await http.post(root + "local-events-timeoff/add",
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(data),
  );
  if (response.statusCode == 200 || response.statusCode == 201) {
    return TimeOff.fromJson(json.decode(response.body));
  } else {
    throw Exception('Failed to load album');
  }
}
Future<List<TeamTimeOff>> fetchTeamTimeOffs() async {
  final response = await http.get(root + "local-events-timeoff/search/team/1");
  if (response.statusCode == 200) {
    return decodeTeamTimeOffs(response.body);
  } else {
    throw Exception('Failed to load employee');
  }
}
List<TeamTimeOff> decodeTeamTimeOffs(String responseBody) {
  final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
  return parsed.map<TeamTimeOff>((json) => TeamTimeOff.fromMap(json)).toList();
}

Future<TimeOffStatus> fetchTimeOffStatus() async{
  final response = await http.get(root + "local-events-timeoff/search/team/2");
  if (response.statusCode == 200) {
    return TimeOffStatus.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load employee');
  }
}