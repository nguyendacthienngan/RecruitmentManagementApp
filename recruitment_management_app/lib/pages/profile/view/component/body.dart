import 'package:flutter/material.dart';
import 'package:recruitment_management_app/components/button/add_button_component.dart';
import 'package:recruitment_management_app/components/button/edit_button_component.dart';
import 'package:recruitment_management_app/components/button/back_button_component.dart';
import 'package:recruitment_management_app/components/custom_card_label_component.dart';
import 'package:recruitment_management_app/components/input/dark_input_with_icon_component.dart';
import 'package:recruitment_management_app/main.dart';
import '../../../../components/label_component.dart';
class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: new Column(
          children: <Widget>[
              //new Text('Profile'),
            CustomLabel(
              title: "Full name:",
              content: "Nguyen Dac Thien Ngan",
            ),
            CustomLabel(
              title: "Full name:",
              content: "Nguyen Dac Thien Ngan",
            ),
            CustomLabel(
              title: "Full name:",
              content: "Nguyen Dac Thien Ngan",
            ),
            CustomLabel(
              title: "Address:",
              content: "239/22 Nguyen Van Cong P3 Quan Go Vap AAAAAAAAAA",
            ),
            EditButton(
              onPressed: () => {},
            ),
            CustomBackButton(
              onPressed: () => {},
            ),
            AddButton(
              onPressed: () => {},
            ),
            DarkInputWithIcon(
              hint: "Hello",
              icon: Icons.email
            ),
            CustomCardLabel(
              title: "Hello",
              content: "Hello",
            ),
          ],
        ),
      ),
    );
  }
}