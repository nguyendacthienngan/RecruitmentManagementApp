
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';
class SmallPrimaryButton extends StatefulWidget {
  final String btnText;
  final double width;
  final GestureTapCallback onPressed;
  SmallPrimaryButton({this.btnText, this.width, this.onPressed});
  @override
  _SmallPrimaryButtonState createState() => _SmallPrimaryButtonState();
}

class _SmallPrimaryButtonState extends State<SmallPrimaryButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(25),
      ),
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
      child: Center(
        child: Text(
            widget.btnText,
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
            )),

      ),
    );
  }
}
