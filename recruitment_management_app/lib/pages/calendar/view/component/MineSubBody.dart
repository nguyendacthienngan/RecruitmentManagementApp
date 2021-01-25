import 'package:flutter/material.dart';
import 'package:recruitment_management_app/components/button/gradient_button_component.dart';
import 'package:recruitment_management_app/pages/calendar/view/component/event_label.dart';
import 'package:recruitment_management_app/pages/calendar/view/component/new_event_card.dart';
import 'package:recruitment_management_app/pages/calendar/view/component/view_event_card.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:recruitment_management_app/components/calendar_component.dart';
import 'package:recruitment_management_app/constants.dart';
class MineSubBody extends StatefulWidget{
  @override
  _MineSubBodyState createState()=>_MineSubBodyState();
}
class _MineSubBodyState extends State<MineSubBody> {
  CalendarController calendarController;
  bool _neweventcardVisible = false;
  bool _vieweventcardVisible = false;
  double windowWidth = 0;
  double windowHeight = 0;
  Color _backgroundColor = kSecondaryColor;
  void initState(){
    super.initState();
    calendarController = CalendarController();
  }
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
    return Container(
      child: Stack(
        children: [
          AnimatedContainer(
            color: _backgroundColor,
            curve: Curves.fastLinearToSlowEaseIn,
            duration: Duration(
                milliseconds: 1000
            ),
            child: Column(
              children: <Widget>[
                CalendarCustom(
                  calendarController: calendarController,
                ),
                // GestureDetector(
                //   onTap: () {
                //     setState(() {
                //       if(_vieweventcardVisible==true)
                //         _vieweventcardVisible=false;
                //       _neweventcardVisible=true;
                //       print('New event');
                //     });
                //   },
                //   child: GradientButton(
                //     btnText: "Create new event",
                //     width: 200,
                //   ),
                // ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  width: windowWidth,
                  child: Column(
                    children:[
                      Container(
                        width: windowWidth*5/6,
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'UPCOMING',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      EventLabel(
                        onTap: (){
                          setState(() {
                            if(_neweventcardVisible==true)
                              _neweventcardVisible=false;
                            _vieweventcardVisible=true;
                            print('open view card');
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          NewEventCard(
            cardVisible: _neweventcardVisible,
          ),
          ViewEventCard(
            cardVisible: _vieweventcardVisible,
          ),
        ],
      ),
    );
  }
}