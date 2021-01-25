import 'package:flutter/material.dart';
import 'package:recruitment_management_app/constants.dart';
import 'package:intl/intl.dart';

class CustomDatePicker extends StatefulWidget{
  final double width;
  final double height;
  final ColorScheme colorScheme;
  final TextEditingController controller;
  CustomDatePicker({
    this.width=200,
    this.height=50,
    this.colorScheme =const ColorScheme.light(primary: kPrimaryColor),
    this.controller
  });
  @override
  _CustomDatePickerState createState() => _CustomDatePickerState();
  
}

class _CustomDatePickerState extends State<CustomDatePicker>{
  static DateTime date=DateTime.now();
  static String formattedDate = DateFormat('dd-MM-yyyy').format(date);

  Future<Null> _selectDate(BuildContext context) async{
    DateTime _datePicker= await showDatePicker(
      context: context,
      initialDate: date,
      firstDate: DateTime(1945),
      lastDate: DateTime(2030),
      builder: (BuildContext context, Widget child){
        return Theme(
          data: ThemeData(
            colorScheme: widget.colorScheme,
          ),
          child: child,
        );
      },
    );
    if(_datePicker!=null && _datePicker!=date)
      {
        setState(() {
          date =_datePicker;
          widget.controller.text = date.toString();
          formattedDate = DateFormat('dd-MM-yyyy').format(date);
        });
      }
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(
            width: widget.width,
            height: widget.height,
            child: TextFormField(
              controller: widget.controller ,
              textAlign: TextAlign.center,
              readOnly: true,
              onTap: () {
                setState(() {
                  _selectDate(context);
                });
              },
              decoration: InputDecoration(
                hintStyle: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                ),
                hintText: formattedDate,
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: kPrimaryColor, width: 2.0),
                  borderRadius: BorderRadius.circular(25),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: kPrimaryColor, width: 2.0),
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}