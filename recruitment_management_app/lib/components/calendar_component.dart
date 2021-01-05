import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:recruitment_management_app/constants.dart';

class CalendarCustom extends StatelessWidget{
  final CalendarController calendarController;
  CalendarCustom({this.calendarController});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          TableCalendar(
            calendarController: calendarController,
            startingDayOfWeek: StartingDayOfWeek.monday,
            calendarStyle: CalendarStyle(
              weekdayStyle: TextStyle(
                fontWeight: FontWeight.normal,
              ),
              weekendStyle: TextStyle(
                fontWeight: FontWeight.normal,
              ),
              selectedColor: Color.fromARGB(255, 34, 43, 69),
              outsideWeekendStyle: TextStyle(
                color: Color(0xFF9E9E9E),
              ),
            ),
            headerStyle: HeaderStyle(
              titleTextStyle: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
              formatButtonVisible: false,
              centerHeaderTitle: true,
              formatButtonShowsNext: false,
            ),
            daysOfWeekStyle: DaysOfWeekStyle(
              weekendStyle: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Color.fromARGB(255, 34, 43, 69),
              ),
              weekdayStyle: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Color.fromARGB(255, 34, 43, 69),
              ),
            ),
            rowHeight: 45,
          ),
        ],
      ),
    );
  }
}