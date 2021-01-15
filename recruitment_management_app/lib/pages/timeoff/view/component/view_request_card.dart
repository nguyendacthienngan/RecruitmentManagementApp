import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recruitment_management_app/components/button/primary_button_component.dart';
import 'package:recruitment_management_app/components/card/custom_card.dart';
import 'package:recruitment_management_app/components/divider_top_card_component.dart';
import 'package:recruitment_management_app/components/label/label_title_component.dart';
import 'package:recruitment_management_app/components/input/small_input_component.dart';
import 'package:recruitment_management_app/components/datetimepicker/textfield_datepicker.dart';
import 'package:recruitment_management_app/components/button/gradient_button_component.dart';
import 'package:recruitment_management_app/components/dropdown/dropdown_button_component.dart';

// ignore: must_be_immutable
class ViewRequestCard extends StatefulWidget{
  bool cardVisible;
  ViewRequestCard({this.cardVisible=false});
  _ViewRequestCardState createState() => _ViewRequestCardState();
}

class _ViewRequestCardState extends State<ViewRequestCard>{
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
    return CustomCard(
      height: 600,
      yOffset: 100,
      isVisible: widget.cardVisible,
      context: context,
      child: Container(
        child:  DraggableScrollableSheet(
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
                          height: 16,
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
                                        margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                                        child: CustomLabelTitle(
                                          title: "From:",
                                        ),
                                      ),
                                    ],
                                  ),
                                  LayoutBuilder(
                                      builder: (context, constraints) {
                                        return CustomDatePicker(
                                          width: constraints.maxWidth-10,
                                        );
                                      }
                                  ),
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
                                          title: "To",
                                        ),
                                      ),
                                    ],
                                  ),
                                  LayoutBuilder(
                                      builder: (context, constraints) {
                                        return CustomDatePicker(
                                          width: constraints.maxWidth-10,
                                        );
                                      }
                                  ),
                                ],
                              ),
                            )
                          ],
                        ), //FROM DATE TO DATE
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
                                          title: "From:",
                                        ),
                                      ),
                                    ],
                                  ),
                                  LayoutBuilder(
                                      builder: (context, constraints) {
                                        return CustomDropdownButton(
                                          width: constraints.maxWidth/2,
                                          hintText: "Sick Leave",
                                          listItem: ["Sick Leave", "Casual Leave"],
                                        );
                                      }
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ), //LEAVE TYPE
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
                                          title: "Days off:",
                                        ),
                                      ),
                                    ],
                                  ),
                                  LayoutBuilder(
                                      builder: (context, constraints) {
                                        return SmallInput(
                                          hint: "X days",
                                          width: constraints.maxWidth/2,
                                          height: 50,
                                        );
                                      }
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              widget.cardVisible = false;
                              print('Cancel request');
                            });
                          },
                          child: PrimaryButton(
                            btnText: "CANCEL REQUEST",
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
                              print('Back');
                            });
                          },
                          child: Text(
                            'Back',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: windowWidth,
                  height: 30,
                  alignment: Alignment.center,
                  child: DividerTopCard(),
                ),

              ],
            );
          },
        ),
      ),
    );
  }
}

