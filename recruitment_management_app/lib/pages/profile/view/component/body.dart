import 'package:flutter/material.dart';
import 'package:recruitment_management_app/components/button/add_button_component.dart';
import 'package:recruitment_management_app/components/button/edit_button_component.dart';
import 'package:recruitment_management_app/components/button/back_button_component.dart';
import 'package:recruitment_management_app/components/custom_card_label_component.dart';
import 'package:recruitment_management_app/components/input/dark_input_with_icon_component.dart';
import 'package:recruitment_management_app/main.dart';
import '../../../../components/label/label_info_component.dart';
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
              title: "Chung Thai Dung",
              content1: "Web Intern",
              content2: "4 days | 12/7/2020 ~15/7/2020",
              content3: "Leave type: Sick leave",
            ),
          ],
        ),
      ),
    );
  }
}