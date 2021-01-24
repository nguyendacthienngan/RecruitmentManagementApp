import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recruitment_management_app/components/card/custom_card.dart';
import 'package:recruitment_management_app/components/datetimepicker/textfield_timepicker.dart';
import 'package:recruitment_management_app/components/divider_top_card_component.dart';
import 'package:recruitment_management_app/components/input/input_with_icon_component.dart';
import 'package:recruitment_management_app/components/label/label_info_component.dart';
import 'package:recruitment_management_app/components/label/label_title_component.dart';
import 'package:recruitment_management_app/components/input/small_input_component.dart';
import 'package:recruitment_management_app/components/datetimepicker/textfield_datepicker.dart';
import 'package:recruitment_management_app/components/button/gradient_button_component.dart';
import 'package:recruitment_management_app/components/dropdown/dropdown_button_component.dart';
import 'package:recruitment_management_app/constants.dart';

// ignore: must_be_immutable
class NewEventCard extends StatefulWidget{
  bool cardVisible;
  NewEventCard({this.cardVisible=false});
  _NewEventCardState createState() => _NewEventCardState();
}

class _NewEventCardState extends State<NewEventCard>{
  double windowWidth = 0;
  double windowHeight = 0;
  double _yOffset=20;
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
    return CustomCard(
      height: windowHeight*3/4,
      yOffset: _yOffset,
      isVisible: widget.cardVisible,
      context: context,
      child: Container(
        child: DraggableScrollableSheet(
          initialChildSize: 1.0,
          minChildSize: 1.0,
          maxChildSize: 1.0,
          builder: (context, scrollController) {
            return Stack(
              children: [
                Container(
                  width: windowWidth,
                  child: SingleChildScrollView(
                    controller: scrollController,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 70,
                        ),
                        Row(
                          children: [
                            SizedBox(width: 20),
                            Expanded(
                              flex: 1,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(
                                            0, 10, 0, 10),
                                        child: CustomLabelTitle(
                                          title: "Event title:",
                                        ),
                                      ),
                                    ],
                                  ),
                                  LayoutBuilder(
                                      builder: (context, constraints) {
                                        return SmallInput(
                                            hint: 'Event title',
                                            width: constraints.maxWidth-48,
                                            height: 50,
                                        );
                                      }
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ), //EVENT TITLE
                        Row(
                          children: [
                            SizedBox(width: 20),
                            Expanded(
                              flex: 1,
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                                        child: CustomLabelTitle(
                                          title: "Event Type:",
                                        ),
                                      ),
                                    ],
                                  ),
                                  CustomDropdownButton(
                                    hintText: "Meeting",
                                    listItem: ["Meeting", "Holiday"],
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                                        child: CustomLabelTitle(
                                          title: "Location:",
                                        ),
                                      ),
                                    ],
                                  ),
                                  LayoutBuilder(
                                      builder: (context, constraints) {
                                        return SmallInput(
                                          hint: "Location",
                                          width: constraints.maxWidth -48,
                                          height: 50,
                                        );
                                      }
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),//EVENT YPE, LOCATION
                        Row(
                          children: [
                            SizedBox(width: 20),
                            Expanded(
                              flex: 1,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                                        child: CustomLabelTitle(
                                          title: "Date:",
                                        ),
                                      ),
                                    ],
                                  ),
                                  LayoutBuilder(
                                      builder: (context, constraints) {
                                        return CustomDatePicker(
                                          width: constraints.maxWidth-15,
                                        );
                                      }
                                  ),
                                  // CustomDatePicker(
                                  //   width: windowWidth/2-10,
                                  // ),
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                                        child: CustomLabelTitle(
                                          title: "Time",
                                        ),
                                      ),
                                    ],
                                  ),
                                  LayoutBuilder(
                                      builder: (context, constraints) {
                                        return CustomTimePicker(
                                          width: constraints.maxWidth-15,
                                        );
                                      }
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(width: 20),
                            Expanded(
                              flex: 1,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(
                                            0, 10, 0, 10),
                                        child: CustomLabelTitle(
                                          title: "Participants",
                                        ),
                                      ),
                                    ],
                                  ),
                                  LayoutBuilder(
                                      builder: (context, constraints) {
                                        return Container(
                                          width: constraints.maxWidth,
                                          child: Wrap(
                                            children: [
                                              Chip(
                                                avatar: CircleAvatar(
                                                  backgroundColor: Colors.white,
                                                  child:  Icon(
                                                    Icons.person,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                                backgroundColor: kPrimaryColor,
                                                label: Text('Ngan NDT',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Chip(
                                                avatar: CircleAvatar(
                                                  backgroundColor: Colors.white,
                                                  child:  Icon(
                                                    Icons.person,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                                backgroundColor: kPrimaryColor,
                                                label: Text('Dung CT',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Chip(
                                                avatar: CircleAvatar(
                                                  backgroundColor: Colors.white,
                                                  child:  Icon(
                                                    Icons.person,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                                backgroundColor: kPrimaryColor,
                                                label: Text('Bach NL',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Chip(
                                                avatar: CircleAvatar(
                                                  backgroundColor: Colors.white,
                                                  child:  Icon(
                                                    Icons.person,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                                backgroundColor: kPrimaryColor,
                                                label: Text('Ngan NDT',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Chip(
                                                avatar: CircleAvatar(
                                                  backgroundColor: Colors.white,
                                                  child:  Icon(
                                                    Icons.person,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                                backgroundColor: kPrimaryColor,
                                                label: Text('Ngan NDT',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Chip(
                                                avatar: CircleAvatar(
                                                  backgroundColor: Colors.white,
                                                  child:  Icon(
                                                    Icons.person,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                                backgroundColor: kPrimaryColor,
                                                label: Text('Ngan NDT',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        );
                                      }
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              widget.cardVisible = false;
                              print('Save');
                            });
                          },
                          child: GradientButton(
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
                              widget.cardVisible = false;
                              print('Cancel');
                            });
                          },
                          child: Text(
                            'Cancel',
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: windowWidth,
                  height: 80,
                  alignment: Alignment.center,
                  color: Colors.white,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 16,
                      ),
                      DividerTopCard(),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        'CREATE NEW EVENT',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

