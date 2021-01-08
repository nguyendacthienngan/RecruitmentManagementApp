import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recruitment_management_app/components/input/small_input_component.dart';
import 'package:recruitment_management_app/components/label/label_title_component.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              
            ),
            Row(
              children: [
                SizedBox(width: 20),
                Expanded(
                  flex: 1,
                  child: SmallInput(
                    hint: "Hello",
                    width: 150,
                    height: 50,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: SmallInput(
                    hint: "Hello",
                    width: 150,
                    height: 50,
                  ),
                )
              ],
            ),
          ],
        )
      ),
    );
  }
}
