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
import 'MineSubBody.dart';
import 'TeamSubBody.dart';

class Body extends StatefulWidget{
  @override
  _BodyState createState()=>_BodyState();
}
class _BodyState extends State<Body>{
  // ignore: must_call_super

  int _currentSelection;
  Widget _subwidget;

  void initState(){
    super.initState();
    _currentSelection=0;
    _subwidget= MineSubBody();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        color: kSecondaryColor,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SegmentedControl(
                children: segmentedcontrolChildren,
                currentSelection: _currentSelection,
                onSegmentChosen: (index){
                  setState(() {
                    _currentSelection=index;
                    if(index==0) {
                      _subwidget= MineSubBody();
                    }
                    else {
                      _subwidget= TeamSubBody();
                    }
                  });
                },
              ),
              AnimatedSwitcher(
                child: _subwidget,
                duration: Duration(milliseconds:500),
                switchInCurve: Curves.easeInBack,
                switchOutCurve: Curves.easeInBack,
                transitionBuilder: (Widget child, Animation<double> animation)=>
                    SizeTransition(
                      child: child,
                      sizeFactor: animation,
                    ),
              ),
            ],
          ),
        )
    );
  }
}



