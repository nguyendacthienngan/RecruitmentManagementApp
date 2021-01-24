import 'dart:convert';
import 'dart:async';
import 'package:recruitment_management_app/models/teamtimeoff.model.dart';
import 'package:recruitment_management_app/models/timeoff.model.dart';
import 'package:recruitment_management_app/models/timeoffstatus.model.dart';
import 'package:http/http.dart' as http;
import 'package:recruitment_management_app/constants.dart';

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