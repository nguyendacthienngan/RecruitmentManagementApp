import 'dart:convert';
import 'dart:async';
import 'package:recruitment_management_app/models/candidate.model.dart';
import 'package:recruitment_management_app/models/contact.model.dart';
import 'package:http/http.dart' as http;
import 'package:recruitment_management_app/constants.dart';
String url = root + "candidates/search/status/";

Future<List<Candidate>> fetchCandidates(int status) async {
  final response = await http.get(url + status.toString());
  if (response.statusCode == 200) {
    return decodeEmployee(response.body);
  } else {
    throw Exception('Unable to fetch data from the REST API');
  }
}

List<Candidate> decodeEmployee(String responseBody) {
  final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
  return parsed.map<Candidate>((json) => Candidate.fromMap(json)).toList();
}

