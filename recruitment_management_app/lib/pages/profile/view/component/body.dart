import 'package:flutter/material.dart';
import 'package:recruitment_management_app/main.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: new Column(
          children: <Widget>[
              new Text('Profile'),
          ],
        ),
      ),
    );
  }
}