import 'dart:convert';
import 'dart:async';
import 'package:recruitment_management_app/models/contact.model.dart';
import 'package:http/http.dart' as http;
import 'package:recruitment_management_app/constants.dart';
String url = root + "contacts/";
Future<Contact> fetchContact(int id) async {
  final response = await http.get(url + id.toString());

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Contact.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load contact');
  }
}
