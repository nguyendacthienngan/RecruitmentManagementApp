import 'package:flutter/material.dart';
import 'package:recruitment_management_app/components/button/primary_button_component.dart';
import 'package:recruitment_management_app/components/dropdown/dark_dropdown_button_component.dart';
import 'package:recruitment_management_app/main.dart';
import 'package:recruitment_management_app/pages/checkin/index/view/component/dark_card.dart';
import 'package:recruitment_management_app/pages/checkin/index/view/component/gradient_card.dart';
class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
          child: new Column(
            children: <Widget>[
              Container(
                child: Row(
                  children: [
                    Text(
                        "CHECK IN",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                          fontSize: 18
                        ),
                    ),
                    Expanded(
                      child: Container(),
                    ),
                    DarkDropdownButton(
                      hintText: "SORT",
                      height: 200,
                      width: 40,
                      listItem: ["Item 1", "Item 2"],
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  Container(
                    child: Text(
                      "Monday, 4th january 2021"
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Text(
                        "WAITING",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 18
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: GradientCheckInCard(),
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Text(
                      "DONE CHECK-IN",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 18
                      ),
                    ),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () => {
                  Navigator.pushNamed(context, "/checkInSteps")
                },
                child: Container(
                  margin: EdgeInsets.only(top: 20),
                  child: DarkCheckInCard(
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}