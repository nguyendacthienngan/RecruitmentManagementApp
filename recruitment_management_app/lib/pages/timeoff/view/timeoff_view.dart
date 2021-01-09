import 'package:flutter/material.dart';

import 'package:recruitment_management_app/components/calendar_component.dart';
import 'package:recruitment_management_app/main.dart';
import 'package:recruitment_management_app/pages/timeoff/timeoff_request/timeoff_request_view.dart';
import '../../../enums.dart';
import './component/body.dart';
import 'package:recruitment_management_app/constants.dart';
import 'package:recruitment_management_app/components/custom_bottom_nav_bar.dart';

class TimeOffPage extends StatefulWidget{
  static String routeName = "/timeoff";
  @override
  _TimeOffPageState createState() => _TimeOffPageState();
}

class _TimeOffPageState extends State<TimeOffPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'TIME OFF',
          style: TextStyle(
            color: kPrimaryColor,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: kSecondaryColor,
        elevation: 0,
        actions: <Widget>[
          IconButton(
            icon: Icon(
                Icons.notifications,
              color: kPrimaryColor,
            ),
            iconSize: 30,

            onPressed: ()=>{
              Navigator.pushNamed(context, TimeOffRequest().route)
            },
          ),
        ],
      ),
      body:  Body(),
      bottomNavigationBar: CustomBottomNavBar(
        selectedMenu: MenuState.timeOff,
      ),
    );
  }
}