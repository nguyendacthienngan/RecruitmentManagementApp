import 'package:flutter/material.dart';
import 'package:recruitment_management_app/constants.dart';
import 'package:recruitment_management_app/pages/timeoff/view/component/request_card.dart';
import 'package:recruitment_management_app/pages/timeoff/view/component/request_label.dart';
import 'package:recruitment_management_app/pages/timeoff/view/component/view_request_card.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:recruitment_management_app/components/calendar_component.dart';
import 'package:recruitment_management_app/components/button/gradient_button_component.dart';


class MineSubBody extends StatefulWidget{
  @override
  _MineSubBodyState createState()=>_MineSubBodyState();
}
class _MineSubBodyState extends State<MineSubBody> {
  CalendarController calendarController;
  bool _requestcardVisible = false;
  bool _viewrequestcardVisible = false;

  double windowWidth = 0;
  double windowHeight = 0;
  Color _backgroundColor = kSecondaryColor;
  void initState() {
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
                GestureDetector(
                  onTap: () {
                    setState(() {
                      if(_viewrequestcardVisible==true)_viewrequestcardVisible=false;
                          _requestcardVisible = true;
                      print('New Request');
                    });
                  },
                  child: GradientButton(
                    btnText: "Request time off",
                    width: 200,
                  ),
                ),
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
                          'MY REQUEST',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      RequestLabel(
                        onTap: (){
                          setState(() {
                            if(_requestcardVisible==true)
                              _requestcardVisible=false;
                            _viewrequestcardVisible=true;
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
          RequestCard(
            cardVisible: _requestcardVisible,
          ),
          ViewRequestCard(
            cardVisible: _viewrequestcardVisible,
          ),
        ],
      ),
    );
  }
}