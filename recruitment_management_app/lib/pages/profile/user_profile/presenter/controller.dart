import 'dart:convert';
import 'dart:async';
import 'package:recruitment_management_app/models/employee.model.dart';
import 'package:http/http.dart' as http;
import 'package:recruitment_management_app/constants.dart';
import 'package:recruitment_management_app/globals.dart' as globals;
String url = root + "employees/";
Future<Employee> fetchEmployee(int id) async {
  final response = await http.get(url + id.toString());

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Employee.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load employee');
  }
}

Future<List<Employee>> fetchEmployees() async {
  final response = await http.get(url);
  if (response.statusCode == 200) {
    return decodeEmployee(response.body);
  } else {
    throw Exception('Unable to fetch data from the REST API');
  }
}

List<Employee> decodeEmployee(String responseBody) {
  final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
  return parsed.map<Employee>((json) => Employee.fromMap(json)).toList();
}