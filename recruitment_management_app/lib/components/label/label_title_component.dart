import 'package:flutter/material.dart';

class CustomLabelTitle extends StatelessWidget {
  final String title;
  CustomLabelTitle({this.title});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(30, 6, 30, 0),
      child: Text(
          title,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w700
          ),
      )
    );
  }
}
