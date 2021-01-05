import 'package:flutter/material.dart';

import 'package:recruitment_management_app/components/calendar_component.dart';
import 'package:recruitment_management_app/main.dart';
import '../../../enums.dart';
import './component/body.dart';
import 'package:recruitment_management_app/constants.dart';
import 'package:recruitment_management_app/components/custom_bottom_nav_bar.dart';

class CalendarPage extends StatefulWidget{
  static String routeName = "/calendar";
  @override
  _CalendarPageState createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'CALENDAR',
          style: TextStyle(
            color: kPrimaryColor,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: kSecondaryColor,
      ),
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(
        selectedMenu: MenuState.calendar,

      ),
    );
  }
}