
import 'dart:io';

import 'package:dio/dio.dart';
import 'dart:convert';
import 'dart:async';
import 'package:recruitment_management_app/models/candidate.model.dart';
import 'package:recruitment_management_app/models/contact.model.dart';
import 'package:http/http.dart' as http;
import 'package:recruitment_management_app/constants.dart';

String url = root + "recognizer/identify";
postData(File file, String identification)async{
  var dio = Dio();
  try {
    String  fileName = file.path.split('/').last;
    FormData formData = new FormData.fromMap({
      "file":
          await MultipartFile.fromFile(file.path, filename:fileName),
    });
    var response = await dio.post(url, data: formData);
    return response.data;
  } catch (e) {
    print(e);
  }
}