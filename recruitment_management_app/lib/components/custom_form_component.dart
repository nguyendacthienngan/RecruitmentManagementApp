import 'package:flutter/material.dart';
import 'package:recruitment_management_app/components/input/small_input_component.dart';
import 'package:recruitment_management_app/components/label/label_title_component.dart';
class CustomForm extends StatelessWidget {
  final String firstTitle;
  final String firstHintText;
  final String secondTitle;
  final String secondHintText;
  CustomForm({this.firstTitle, this.firstHintText, this.secondTitle, this.secondHintText });

  @override
  Widget build(BuildContext context) {
    return Row(
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
                      title: firstTitle,
                    ),
                  ),
                ],
              ),
              SmallInput(
                hint: firstHintText,
                width: 150,
                height: 50,
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
                      title: secondTitle,
                    ),
                  ),
                ],
              ),
              SmallInput(
                hint: secondHintText,
                width: 150,
                height: 50,
              ),
            ],
          ),
        )
      ],
    );
  }
}
