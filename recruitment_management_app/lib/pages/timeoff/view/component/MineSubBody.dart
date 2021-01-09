import 'package:flutter/material.dart';
import 'package:recruitment_management_app/components/button/primary_button_component.dart';
import 'package:recruitment_management_app/components/card/custom_card.dart';
import 'package:recruitment_management_app/components/divider_top_card_component.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:recruitment_management_app/components/calendar_component.dart';

class MineSubBody extends StatefulWidget{
  @override
  _MineSubBodyState createState()=>_MineSubBodyState();
}
class _MineSubBodyState extends State<MineSubBody> {
  CalendarController calendarController;
  bool _cardVisible = false;
  Widget _card;

  double windowWidth = 0;
  double windowHeight = 0;

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
                      if (_cardVisible == false) _cardVisible = true;
                      print('aaaaa');
                    });
                  },
                  child: PrimaryButton(
                    btnText: "Request time off",
                    width: 200,
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  //  color: Colors.red,
                  width: 350,
                  height: 40,
                  child: Text(
                    'MY REQUEST',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: windowWidth,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: CustomCard(
                isVisible: _cardVisible,
                context: context,
                child: Column(
                  children: [
                    SizedBox(
                      height: 16,
                    ),
                    DividerTopCard(),
                    SizedBox(
                      height: 150,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _cardVisible = false;
                          print('Save');
                        });
                      },
                      child: PrimaryButton(
                        btnText: "REQUEST",
                        width: 200,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _cardVisible = false;
                          print('Cancel');
                        });
                      },
                      child: Text(
                        'Cancel',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}