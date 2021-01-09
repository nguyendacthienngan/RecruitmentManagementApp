import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:recruitment_management_app/components/calendar_component.dart';
class MineSubBody extends StatefulWidget{
  @override
  _MineSubBodyState createState()=>_MineSubBodyState();
}
class _MineSubBodyState extends State<MineSubBody> {
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
          ),
          Container(
            alignment: Alignment.centerLeft,
            //  color: Colors.red,
            width:350,
            child: Text(
              'UPCOMING',
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