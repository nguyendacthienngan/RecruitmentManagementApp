import 'package:flutter/material.dart';
import '../../constants.dart';

class AddButton extends StatelessWidget {
  final GestureTapCallback onPressed;
  AddButton({this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Container(
        child: IconButton(
          icon: Icon(
            Icons.add,
          ),
          color: kPrimaryColor,
          onPressed: onPressed,
        )
    );
  }
}
