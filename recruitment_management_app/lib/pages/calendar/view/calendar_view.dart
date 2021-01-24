import 'package:flutter/material.dart';
import 'package:recruitment_management_app/components/calendar_component.dart';
import 'package:recruitment_management_app/main.dart';
import 'package:recruitment_management_app/globals.dart' as globals;
import 'package:recruitment_management_app/pages/calendar/calendar_request/view/calendar_request_view.dart';
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
        elevation: 0,
        actions: <Widget>[
          LayoutBuilder(
            builder: (context, constraint)
            {
              if (globals.role==2)
                return IconButton(
                  icon: Icon(
                    Icons.notifications,
                    color: kPrimaryColor,
                  ),
                  iconSize: 30,
                  onPressed: ()=>{
                    Navigator.pushNamed(context, CalendarRequest().route)
                  },
                );
              else return IconButton(
                icon: Icon(
                  Icons.notifications,
                  color: kPrimaryColor,
                ),
                iconSize: 1,
                onPressed: null,
              );
            },
          ),
        ],
      ),
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(
        selectedMenu: MenuState.calendar,
      ),
    );
  }
}