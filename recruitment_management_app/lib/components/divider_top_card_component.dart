import 'package:flutter/material.dart';
import '../constants.dart';
class DividerTopCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width /2 - 20,
      height: 5,
      decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(50)
      ),
    );
  }
}
