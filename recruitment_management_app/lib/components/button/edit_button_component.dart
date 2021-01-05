import 'package:flutter/material.dart';
import '../../constants.dart';

class EditButton extends StatelessWidget {
  final GestureTapCallback onPressed;
  EditButton({this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: IconButton(
        icon: Icon(
          Icons.edit,
        ),
        color: kPrimaryColor,
        onPressed: onPressed,
      )
    );
  }
}
