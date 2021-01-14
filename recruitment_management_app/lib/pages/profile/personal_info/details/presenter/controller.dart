import 'dart:convert';
import 'dart:async';
import 'package:recruitment_management_app/models/employee.model.dart';
import 'package:http/http.dart' as http;
import 'package:recruitment_management_app/constants.dart';

String url = root + "employees/";
Future<List<Employee>> fetchEmployees() async {
  final response = await http.get(
      'url');
  if (response.statusCode == 200) {
    return decodeEmployees(response.body);
  } else {
    throw Exception('Unable to fetch data from the REST API');
  }
}

Future<Employee> fetchEmployee() async {
  final response = await http.get(url + "1");

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

List<Employee> decodeEmployees(String responseBody) {
  final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
  return parsed.map<Employee>((json) => Employee.fromMap(json)).toList();
}

Future<Employee> updateEmployee(String title) async {
  final http.Response response = await http.put(
    'url',
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'title': title,
    }),
  );

  if (response.statusCode == 200) {
    return Employee.fromJson(json.decode(response.body));
  } else {
    throw Exception('Failed to update album.');
  }
}

Future<Employee> sendEmployee(
    String title, int id, String imageUrl, int quantity) async {
  final http.Response response = await http.post(
    'url',
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'title': title,
      'id': id.toString(),
      'imageUrl': imageUrl,
      'quantity': quantity.toString()
    }),
  );
  if (response.statusCode == 201) {
    return Employee.fromJson(json.decode(response.body));
  } else {
    throw Exception('Failed to load album');
  }
}
Future<Employee> deleteEmployee(int id) async {
  final http.Response response = await http.delete(
    'url/$id',
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
  );

  if (response.statusCode == 200) {
    return Employee.fromJson(json.decode(response.body));
  } else {
    throw Exception('Failed to delete album.');
  }
}