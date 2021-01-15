import 'package:flutter/material.dart';
import 'package:recruitment_management_app/components/custom_bottom_nav_bar.dart';
import 'package:recruitment_management_app/constants.dart';
import 'package:recruitment_management_app/enums.dart';
import 'package:recruitment_management_app/pages/calendar/calendar_request/view/component/body.dart';


class CalendarRequest extends StatefulWidget
{
  final String route='/calendar/request';
  @override
  _CalendarRequestState createState() => _CalendarRequestState();
}

class _CalendarRequestState extends State<CalendarRequest>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
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
      bottomNavigationBar: CustomBottomNavBar(
        selectedMenu: MenuState.calendar,
      ),
    );
  }
}