
import 'package:flutter/material.dart';
import '../../constants.dart';
class PrimaryButton extends StatefulWidget {
  final String btnText;
  final double width;
  PrimaryButton({this.btnText, this.width});
  @override
  _PrimaryButtonState createState() => _PrimaryButtonState();
}

class _PrimaryButtonState extends State<PrimaryButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      decoration: BoxDecoration(
        gradient: kPrimaryGradientColor,
        borderRadius: BorderRadius.circular(50),
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
