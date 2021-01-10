import 'package:flutter/material.dart';
import 'package:recruitment_management_app/components/button/gradient_button_component.dart';
import 'package:recruitment_management_app/components/dropdown/dropdown_button_component.dart';
import 'package:recruitment_management_app/components/input/small_input_component.dart';
import 'package:recruitment_management_app/components/label/label_title_component.dart';
import 'package:recruitment_management_app/constants.dart';


class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 16,),
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
                                title: "First name:",
                              ),
                            ),
                          ],
                        ),
                        LayoutBuilder(
                            builder: (context, constraints) {
                              return SmallInput(
                                hint: "Nguyen Dac Thien",
                                width: constraints.maxWidth -48,
                                height: 50,
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
                                title: "Last name",
                              ),
                            ),
                          ],
                        ),
                        LayoutBuilder(
                          builder: (context, constraints) {
                            return SmallInput(
                              hint: "Nguyen Dac Thien",
                              width: constraints.maxWidth -48,
                              height: 50,
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
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                              child: CustomLabelTitle(
                                title: "Gender:",
                              ),
                            ),
                          ],
                        ),
                        CustomDropdownButton(
                          hintText: "Female",
                          listItem: ["Item 1", "Item 2"],
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
                                title: "D.O.B",
                              ),
                            ),
                          ],
                        ),
                        LayoutBuilder(
                          builder: (context, constraints) {
                            return SmallInput(
                              hint: "Nguyen Dac Thien",
                              width: constraints.maxWidth -48,
                              height: 50,
                            );
                          },
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  SizedBox(width: 16),
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
                                title: "University:",
                              ),
                            ),
                          ],
                        ),
                        LayoutBuilder(builder: (context, constraints) {
                          return SmallInput(
                              hint: "Ngan",
                              height: 50,
                              width: constraints.maxWidth -32
                          );
                        })
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  SizedBox(
                    height: 28,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: GradientButton(
                      btnText: "Save",
                      width: 200,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Center(
                        child: Text(
                          "Back",
                          style: TextStyle(
                              color: kThirdColor
                          ),
                        )
                    ),
                  ),
                  SizedBox(
                    height: 28,
                  ),
                ],
              ),
            ],
          )
      ),
    );
  }
}
