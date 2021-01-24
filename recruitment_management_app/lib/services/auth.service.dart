import 'dart:async';
import 'dart:math';
import 'dart:convert';
import 'dart:async';
import 'package:recruitment_management_app/models/authentication.dart';
import 'package:recruitment_management_app/models/employee.model.dart';
import 'package:http/http.dart' as http;
import 'package:recruitment_management_app/constants.dart';
import 'package:recruitment_management_app/globals.dart' as globals;
String url = root + "authentication/login/";

Future<Employee> sendEmployee(String title, int id, String imageUrl, int quantity) async {
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

class AuthService {
  // Login
  Future<bool> login(String username, String password) async {

    final http.Response response = await http.post(
      url,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'username': username,
        'password': password,
      }),
    );
    if (response.statusCode == 200 || response.statusCode == 202 ) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      var auth = Authentication.fromJson((json.decode(response.body)));
      globals.role  = auth.role;
      globals.employeeID  = auth.employee_id;
      return true;
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      return false;
    }
  }

  // Logout
  Future<void> logout() async {
    return true;
  }
}