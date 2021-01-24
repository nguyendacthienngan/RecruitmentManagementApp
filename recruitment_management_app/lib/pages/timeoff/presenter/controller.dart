import 'dart:convert';
import 'dart:async';
import 'package:recruitment_management_app/models/timeoff.model.dart';
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