import 'package:flutter/material.dart';
import 'package:recruitment_management_app/constants.dart';

class TeamRequestLabel extends StatelessWidget
{
  double windowWidth = 0;
  double windowHeight = 0;
  GestureTapCallback onTap;
  TeamRequestLabel({this.onTap});
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
                  'Nguyen Dac Thien Ngan',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                  ),
                ),
                new Text(
                  'Web Intern',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      'x days',
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Text(
                      '<date>~<date>'
                    ),
                  ],
                ),
                Text(
                  'Leave Type: Sick leave',
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