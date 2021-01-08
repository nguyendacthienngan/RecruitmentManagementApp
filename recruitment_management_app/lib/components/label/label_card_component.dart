import 'package:flutter/material.dart';

class CustomLabelCard extends StatelessWidget {
  final Widget text;
  CustomLabelCard({this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(30, 6, 30, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          text
        ],
      ),
    );
  }
}
