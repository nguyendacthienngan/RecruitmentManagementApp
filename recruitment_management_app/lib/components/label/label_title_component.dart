import 'package:flutter/material.dart';

class CustomLabelTitle extends StatelessWidget {
  final String title;
  final Widget text;
  CustomLabelTitle({this.title, this.text});
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
