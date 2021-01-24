import 'package:flutter/material.dart';
import 'package:recruitment_management_app/models/teamtimeoff.model.dart';
import 'package:recruitment_management_app/models/timeoffstatus.model.dart';
import 'package:recruitment_management_app/pages/timeoff/presenter/controller.dart';
import 'package:recruitment_management_app/pages/timeoff/view/component/team_request_label.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:recruitment_management_app/components/calendar_component.dart';

class TeamSubBody extends StatefulWidget{
  @override
  _TeamSubBodyState createState()=>_TeamSubBodyState();
}
class _TeamSubBodyState extends State<TeamSubBody> {
  CalendarController calendarController;
  Future<TimeOffStatus> futurestatus;

  void initState(){
    super.initState();
    futurestatus=fetchTimeOffStatus();
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
          FutureBuilder<TimeOffStatus>(
            future: futurestatus,
            builder: (context,snapshot){
             if (snapshot.hasData){
               for (var i in snapshot.data.approved)
               return TeamRequestLabel(item: i,);
             }
              else if (snapshot.hasError) print(snapshot.error);
              return Center(
                  child: Column(
                    children: [
                      SizedBox(height: 16,),
                      Text('No time off in this period'),
                    ],
                  ),
              );
            },
          ),
         // TeamRequestLabel(),
        ],
      ),
    );
  }
}