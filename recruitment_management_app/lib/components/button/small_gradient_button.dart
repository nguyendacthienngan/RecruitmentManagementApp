
import 'package:flutter/material.dart';
import '../../constants.dart';
class SmallGradientButton extends StatefulWidget {
  final String btnText;
  final double width;
  final GestureTapCallback onPressed;
  SmallGradientButton({this.btnText, this.width, this.onPressed});
  @override
  _SmallGradientButtonState createState() => _SmallGradientButtonState();
}

class _SmallGradientButtonState extends State<SmallGradientButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      decoration: BoxDecoration(
        gradient: kPrimaryGradientColor,
        borderRadius: BorderRadius.circular(10),
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
