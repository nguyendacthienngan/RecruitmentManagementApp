import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recruitment_management_app/components/custom_form_component.dart';
class Body extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomForm(
              firstTitle: "First name:",
              firstHintText: "Ngan",
              secondTitle: "Last name",
              secondHintText: "Nguyen Dac Thien",
            ),
          ],
        )
      ),
    );
  }
}
