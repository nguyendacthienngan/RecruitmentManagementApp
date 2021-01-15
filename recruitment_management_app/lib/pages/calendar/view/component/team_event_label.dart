import 'package:flutter/material.dart';
import 'package:recruitment_management_app/constants.dart';

class TeamEventLabel extends StatelessWidget
{
  double windowWidth = 0;
  double windowHeight = 0;
  @override
  Widget build(BuildContext context) {
    windowWidth = MediaQuery
        .of(context)
        .size
        .width;
    windowHeight = MediaQuery
        .of(context)
        .size
        .height;
    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Container(
          padding: EdgeInsets.fromLTRB(15, 10, 15, 15),
          width: windowWidth - windowWidth / 8,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              new Text(
                'Event Title',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 16,
                  ),
                  Text(
                    'Event Type',
                    style: TextStyle(
                      color: kPrimaryColor,
                    ),
                  ),
                ],
              ),
              Text(
                'Location',
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              Row(
                children: [
                  Text(
                    'Time',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(width: 16,),
                  Text(
                    'Date',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}