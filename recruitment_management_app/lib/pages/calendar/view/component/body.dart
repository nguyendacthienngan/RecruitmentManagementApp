import 'package:flutter/material.dart';
import 'package:recruitment_management_app/components/datetimepicker/textfield_timepicker.dart';

import 'package:table_calendar/table_calendar.dart';
import 'package:recruitment_management_app/components/calendar_component.dart';
import 'package:recruitment_management_app/main.dart';
import 'package:recruitment_management_app/constants.dart';
import 'package:recruitment_management_app/components/calendar_component.dart';
import 'package:recruitment_management_app/components/button/primary_button_component.dart';
import 'package:recruitment_management_app/components/segmented_control_component.dart';
import 'package:recruitment_management_app/components/datetimepicker/textfield_datepicker.dart';

class Body extends StatefulWidget{
  @override
  _BodyState createState()=>_BodyState();
}
class _BodyState extends State<Body>{
  // ignore: must_call_super
  CalendarController calendarController;
  void initState(){
    super.initState();
    calendarController = CalendarController();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        color: kSecondaryColor,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SegmentedControl(
              ),
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
        )
    );
  }


}