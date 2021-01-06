import 'package:flutter/material.dart';
import 'package:recruitment_management_app/constants.dart';
import 'package:intl/intl.dart';

class CustomDatePicker extends StatefulWidget{
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
            colorScheme: ColorScheme.light(primary: kPrimaryColor),
          ),
          child: child,
        );
      },
    );
    if(_datePicker!=null && _datePicker!=date)
      {
        setState(() {
          date =_datePicker;
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
            width: 200,
            height: 50,
            child: TextFormField(
              textAlign: TextAlign.center,
              readOnly: true,
              onTap: () {
                setState(() {
                  _selectDate(context);
                });
              },
              decoration: InputDecoration(
                hintText: formattedDate,
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: kPrimaryColor, width: 3.0),
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