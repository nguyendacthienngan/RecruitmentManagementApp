import 'package:flutter/material.dart';
import 'package:recruitment_management_app/constants.dart';
import 'package:recruitment_management_app/models/teamtimeoff.model.dart';
import 'package:recruitment_management_app/utils.dart';
import 'package:tiengviet/tiengviet.dart';
class TeamRequestLabel extends StatelessWidget
{
  TeamTimeOff item;
  double windowWidth = 0;
  double windowHeight = 0;
  GestureTapCallback onTap;
  TeamRequestLabel({this.onTap,this.item});
  @override
  Widget build(BuildContext context) {
    windowWidth = MediaQuery.of(context).size.width;
    windowHeight = MediaQuery.of(context).size.height;
    return Column(
      children:[
        SizedBox(
          height: 10,
        ),
        GestureDetector(
          onTap: onTap,
          child: Container(
            padding: EdgeInsets.fromLTRB(15, 10, 15, 15),
            width: windowWidth-windowWidth/8,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  TiengViet.parse(item.last_name) + " " + TiengViet.parse(item.first_name),
                 // 'Nguyen Dac Thien Ngan',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                  ),
                ),
                new Text(
                  item.title_name,
                  //'Web Intern',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      'Day off: '+ item.day_off,
                      //'x days',
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Text(
                      'From '+ convertDateFromString(item.start_date)+ " to " + convertDateFromString(item.end_date),
                      //'<date>~<date>'
                    ),
                  ],
                ),
                Text(
                  'Leave Type: ' + leaveType[item.leave_type],
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }


}