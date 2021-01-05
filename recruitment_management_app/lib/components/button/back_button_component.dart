import 'package:flutter/material.dart';
import '../../constants.dart';

class CustomBackButton extends StatelessWidget {
  final GestureTapCallback onPressed;
  CustomBackButton({this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Container(
        child: IconButton(
            icon: Icon(
              Icons.arrow_back,
            ),
            color: kPrimaryColor,
            onPressed: onPressed,
        )
    );
  }
}
