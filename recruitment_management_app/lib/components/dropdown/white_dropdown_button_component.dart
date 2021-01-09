import 'package:flutter/material.dart';
import '../../constants.dart';
class WhiteDropdownButton extends StatefulWidget {
  final String hintText;
  final List listItem;
  WhiteDropdownButton({this.hintText, this.listItem});
  @override
  _WhiteDropdownButtonState createState() => _WhiteDropdownButtonState();
}

class _WhiteDropdownButtonState extends State<WhiteDropdownButton> {
  String valueChoose;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      padding: EdgeInsets.only(left: 16, right: 16),
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(50)
      ),
      child: Center(
          child: DropdownButton(
            hint: Center(
              child: Text(
                  widget.hintText,
                  style: TextStyle(
                      color: kPrimaryColor
                  )
              ),
            ),
            dropdownColor: Colors.white,
            icon: Icon(Icons.arrow_drop_down),
            iconSize: 36,
            isExpanded: true,
            underline: SizedBox(),
            style: TextStyle(
              color: kPrimaryColor,
              fontSize: 14,
            ),
            value: valueChoose,
            onChanged: (newValue) {
              setState(() {
                valueChoose = newValue;
              });
            },
            items: widget.listItem.map((valueItem) {
              return DropdownMenuItem(
                value: valueItem,
                child: Text(valueItem),
              );
            }).toList(),
          )
      ),
    );
  }
}
