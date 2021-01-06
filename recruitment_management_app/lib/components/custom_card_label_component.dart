import 'package:flutter/material.dart';
import 'package:recruitment_management_app/components/button/small_gradient_button.dart';
import 'package:recruitment_management_app/components/button/small_primary_button.dart';

import 'button/small_cancel_button.dart';

class CustomCardLabel extends StatelessWidget {
  final String title;
  final String content;
  CustomCardLabel({this.title, this.content});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            // ListTile(
            //   leading: SizedBox( width: 20 ),
            //   title: Text(
            //       title,
            //       style: TextStyle(
            //         fontSize: 14
            //       ),
            //   ),
            //   subtitle: Text(
            //       content,
            //       style: TextStyle(
            //           fontSize: 14
            //       ),
            //   ),
            // ),
            SizedBox(
                height: 10,
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: 14
              ),
            ),
            SizedBox(
                height: 15
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                SmallCancelButton(
                  btnText: 'CANCEL',
                  onPressed: () {/* ... */},
                ),
                const SizedBox(width: 8),
                SmallGradientButton(
                  width: 100,
                  btnText: 'ACCEPT',
                  onPressed: () {/* ... */},
                ),
                const SizedBox(width: 25),
              ],
            ),
            SizedBox(
              height: 10
            )
          ],
        ),
      ),
    );
  }
}
