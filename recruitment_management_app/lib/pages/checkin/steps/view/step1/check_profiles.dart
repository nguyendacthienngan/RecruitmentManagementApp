import 'package:flutter/material.dart';
import 'package:recruitment_management_app/components/button/edit_button_component.dart';
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
                Row(
                  children: [
                    Expanded(child: Container()),
                    Text("PROFILES", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                    Expanded(
                        child: EditButton(
                          onPressed: () => {
                            Navigator.pushNamed(context, '/editProfileStep')
                          },
                        )
                    )
                  ],
                ),
                SizedBox(height: 32),
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
