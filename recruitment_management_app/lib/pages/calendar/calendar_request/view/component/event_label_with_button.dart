import 'package:flutter/material.dart';
import 'package:recruitment_management_app/components/button/gradient_button_component.dart';
import 'package:recruitment_management_app/constants.dart';

class EventLabel extends StatefulWidget{
  @override
  _EventLabelState createState() => _EventLabelState();
}

class _EventLabelState extends State<EventLabel>{
  double windowWidth = 0;
  double windowHeight = 0;
  int _state=0;
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
                  fontSize: 18,
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    width: 16,
                  ),
                  Text(
                    'Event Type',
                    style: TextStyle(
                      fontSize: 14,
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
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      if (_state == 0)
                        setState(() {
                          print('Decline request');
                          _state = 2;
                        });
                    },
                    child: Container(
                      width: windowWidth / 3,
                      height: 50,
                      decoration: BoxDecoration(
                        color: _state == 2 ? kPrimaryColor : null,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Center(
                        child: Text(
                          'Decline',
                          style: TextStyle(
                            color: _state == 2 ? Colors.white : Colors.black,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      if (_state == 0)
                        setState(() {
                          print('Accept request');
                          _state = 1;
                        });
                    },
                    child: Container(
                      width: windowWidth / 3,
                      height: 50,
                      decoration: BoxDecoration(
                        gradient: _state == 1 ? null : _state == 2
                            ? null
                            : kPrimaryGradientColor,
                        color: _state == 1 ? kPrimaryColor : null,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Center(
                        child: Text(
                          'Accept',
                          style: TextStyle(
                            color: _state == 2 ? Colors.black : Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
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