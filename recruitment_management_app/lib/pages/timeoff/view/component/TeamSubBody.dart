import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:recruitment_management_app/components/calendar_component.dart';

class TeamSubBody extends StatefulWidget{
  @override
  _TeamSubBodyState createState()=>_TeamSubBodyState();
}
class _TeamSubBodyState extends State<TeamSubBody> {
  CalendarController calendarController;
  void initState(){
    super.initState();
    calendarController = CalendarController();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CalendarCustom(
            calendarController: calendarController,
            initialCalendarFormat: CalendarFormat.twoWeeks,
          ),
          Container(
            alignment: Alignment.centerLeft,
            //  color: Colors.red,
            width:350,
            child: Text(
              'TEAM TIME OFF',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}