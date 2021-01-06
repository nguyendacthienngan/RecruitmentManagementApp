import 'package:flutter/material.dart';
import '../../constants.dart';
class DarkInputWithIcon extends StatefulWidget {

  final IconData icon;
  final String hint;
  DarkInputWithIcon({this.icon, this.hint});

  @override
  _DarkInputWithIconState createState() => _DarkInputWithIconState();
}

class _DarkInputWithIconState extends State<DarkInputWithIcon> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16, right: 16),
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: kPrimaryColor,
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
              color: Colors.white,
            ),
          ),
          Expanded(
            child: TextField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintStyle: TextStyle(color: Colors.white),
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
