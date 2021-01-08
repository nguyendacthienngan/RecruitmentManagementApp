import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recruitment_management_app/components/input/small_input_component.dart';
import 'package:recruitment_management_app/components/label/label_title_component.dart';
import 'package:recruitment_management_app/components/dropdown/dropdown_button_component.dart';
class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(28, 0, 28, 0),
      child: Center(
        child: Column(
          children: [
            Column(
              children: [
                SizedBox(height: 18,),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                            child: CustomLabelTitle(
                              title: "Phone number:",
                            ),
                          ),
                        ],
                      ),
                      CustomDropdownButton(
                        hintText: "Single",
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                            child: CustomLabelTitle(
                              title: "Phone number:",
                            ),
                          ),
                        ],
                      ),
                      CustomDropdownButton(
                        hintText: "Single",
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                            child: CustomLabelTitle(
                              title: "Phone number:",
                            ),
                          ),
                        ],
                      ),
                      CustomDropdownButton(
                        hintText: "Single",
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
