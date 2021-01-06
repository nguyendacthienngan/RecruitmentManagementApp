import 'package:flutter/material.dart';
import '../../constants.dart';
class CustomDropdownButton extends StatefulWidget {
  final String hintText;

  CustomDropdownButton({this.hintText});
  @override
  _CustomDropdownButtonState createState() => _CustomDropdownButtonState();
}

class _CustomDropdownButtonState extends State<CustomDropdownButton> {
  String valueChoose;
  List listItem = [
    "item1", "item2", "item3"
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16, right: 16),
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
            color: kPrimaryColor,
            width: 2
        ),
        borderRadius: BorderRadius.circular(50)
      ),
      child: Center(
        child: DropdownButton(
          hint: Text(
              widget.hintText,
              style: TextStyle(
                color: kPrimaryColor
              )
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
          items: listItem.map((valueItem) {
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
