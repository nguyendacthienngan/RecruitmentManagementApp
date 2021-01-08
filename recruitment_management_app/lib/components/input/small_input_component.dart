import 'package:flutter/material.dart';
import '../../constants.dart';
class SmallInput extends StatefulWidget {

  final String hint;
  final double width;
  final double height;
  //InputWithIcon({this.icon, this.hint, this.height})
  SmallInput({this.hint, this.width, this.height});

  @override
  _SmallInputState createState() => _SmallInputState();
}

class _SmallInputState extends State<SmallInput> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: widget.height,
          padding: EdgeInsets.only(left: 16, right: 16),
          //margin: EdgeInsets.all(20),
          decoration: BoxDecoration(
              border: Border.all(
                  color: kPrimaryColor,
                  width: 2
              ),
              borderRadius: BorderRadius.circular(50)
          ),
          child: FittedBox(
            fit: BoxFit.fitHeight,
            child: Container(
              width: widget.width,
              child: TextField(
                style: TextStyle(color: kPrimaryColor),
                decoration: InputDecoration(
                  hintStyle: TextStyle(color: kPrimaryColor),
                  //contentPadding: EdgeInsets.symmetric(vertical: 20),
                  border: InputBorder.none,
                  hintText: widget.hint,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
