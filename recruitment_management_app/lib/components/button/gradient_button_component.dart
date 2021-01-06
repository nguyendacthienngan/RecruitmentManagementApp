
import 'package:flutter/material.dart';
import '../../constants.dart';
class GradientButton extends StatefulWidget {
  final String btnText;
  final double width;
  final GestureTapCallback onPressed;
  GradientButton({this.btnText, this.width, this.onPressed});
  @override
  _GradientButtonState createState() => _GradientButtonState();
}

class _GradientButtonState extends State<GradientButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      decoration: BoxDecoration(
        gradient: kPrimaryGradientColor,
        borderRadius: BorderRadius.circular(25),
      ),
      padding: EdgeInsets.all(20),
      child: Center(
        child: Text(
            widget.btnText,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            )),
      ),
    );
  }
}
