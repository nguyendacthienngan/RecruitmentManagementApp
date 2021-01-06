import 'package:flutter/material.dart';
import '../../constants.dart';
class DarkDropdownButton extends StatefulWidget {
  final String hintText;

  DarkDropdownButton({this.hintText});
  @override
  _DarkDropdownButtonState createState() => _DarkDropdownButtonState();
}

class _DarkDropdownButtonState extends State<DarkDropdownButton> {
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
          color: kPrimaryColor,
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
                    color: Colors.white
                )
            ),
            dropdownColor: kPrimaryColor,
            icon: Icon(
                Icons.arrow_drop_down,
                color: Colors.white,
            ),
            iconSize: 36,
            isExpanded: true,
            underline: SizedBox(),
            style: TextStyle(
              color: Colors.white,
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
