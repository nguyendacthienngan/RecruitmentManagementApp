import 'package:flutter/material.dart';
import '../../constants.dart';
class InputWithIcon extends StatefulWidget {

  final IconData icon;
  final String hint;
  InputWithIcon({this.icon, this.hint});

  @override
  _InputWithIconState createState() => _InputWithIconState();
}

class _InputWithIconState extends State<InputWithIcon> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16, right: 16),
      decoration: BoxDecoration(
        //color: kPrimaryColor,
          border: Border.all(
              color: kPrimaryColor,
              width: 2
          ),
          borderRadius: BorderRadius.circular(50)
      ),
      child: Row(
        children: [
          Container(
            width: 60,
            child: Icon(
              widget.icon,
              size: 20,
              color: kPrimaryColor,
            ),
          ),
          Expanded(
            child: TextField(
              style: TextStyle(color: kPrimaryColor),
              decoration: InputDecoration(
                hintStyle: TextStyle(color: kPrimaryColor),
                contentPadding: EdgeInsets.symmetric(vertical: 20),
                border: InputBorder.none,
                hintText: widget.hint,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
