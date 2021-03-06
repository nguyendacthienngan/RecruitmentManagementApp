import 'package:flutter/material.dart';
import '../../constants.dart';
class CustomDropdownButton extends StatefulWidget {
  final String hintText;
  final List listItem;
  final double width;
  final double height;

  CustomDropdownButton({this.hintText, this.listItem, this.width, this.height});
  @override
  _CustomDropdownButtonState createState() => _CustomDropdownButtonState();
}

class _CustomDropdownButtonState extends State<CustomDropdownButton> {
  String valueChoose;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16, right: 16),
      margin: EdgeInsets.only(right: 16),
      width: widget.width,
      height: widget.height,
      decoration: BoxDecoration(
        color: kSecondaryColor,
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
