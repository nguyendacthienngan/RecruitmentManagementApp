import 'package:flutter/material.dart';
import 'package:recruitment_management_app/components/label/label_info_component.dart';

class CheckProfileStep extends StatefulWidget {
  @override
  _CheckProfileStepState createState() => _CheckProfileStepState();
}

class _CheckProfileStepState extends State<CheckProfileStep> {

  @override
  Widget build(BuildContext context) {

    final double windowWidth = MediaQuery.of(context).size.width;

    return SizedBox(
        width: windowWidth,
        child:  Column(
          children: [
            SizedBox(
              height: 12,
            ),
            Column(
              children: [
                CustomLabel(
                  title: "Hello",
                  content: "Hello",
                )
              ],
            ),
          ],
        )
    );
  }
}
