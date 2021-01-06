
import 'package:flutter/material.dart';
import '../../constants.dart';
class SmallCancelButton extends StatefulWidget {
  final String btnText;
  final double width;
  final GestureTapCallback onPressed;
  SmallCancelButton({this.btnText, this.width, this.onPressed});
  @override
  _SmallCancelButtonState createState() => _SmallCancelButtonState();
}

class _SmallCancelButtonState extends State<SmallCancelButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
      ),
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
      child: Center(
        child: Text(
            widget.btnText,
            style: TextStyle(
              color: kThirdColor,
              fontSize: 14,
            )),

      ),
    );
  }
}
