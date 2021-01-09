import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recruitment_management_app/constants.dart';
import 'package:recruitment_management_app/pages/timeoff/timeoff_request/view/component/body.dart';

class TimeOffRequest extends StatefulWidget
{
  final String route='/timeoff/request';
  @override
  _TimeOffRequest createState() => _TimeOffRequest();
}

class _TimeOffRequest extends State<TimeOffRequest>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: Text(
          'REQUEST',
          style: TextStyle(
            color: kPrimaryColor,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: kSecondaryColor,
        elevation: 0,
      ),
      body: Body(),
    );
  }
}