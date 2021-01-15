import 'package:flutter/material.dart';
import 'package:recruitment_management_app/constants.dart';
import 'package:intl/intl.dart';

class CustomTimePicker extends StatefulWidget{
  final double width;
  final double height;
  final ColorScheme colorScheme;
  CustomTimePicker({
    this.width=200,
    this.height=50,
    this.colorScheme =const ColorScheme.light(primary: kPrimaryColor),
  });
  @override
  _CustomTimePickerState createState() => _CustomTimePickerState();
}
class _CustomTimePickerState extends State<CustomTimePicker>{
  TimeOfDay timeOfDay= TimeOfDay.now();
  Future<Null> _selectTime(BuildContext context) async{
    TimeOfDay _timePicker= await showTimePicker(
      context: context,
      initialTime: timeOfDay,
      builder: (BuildContext context, Widget child){
        return Theme(
          data: ThemeData(
            colorScheme: widget.colorScheme,
          ),
          child: child,
        );
      },
    );
    if(_timePicker!=null && _timePicker!=timeOfDay)
    {
      setState(() {
        timeOfDay =_timePicker;
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
              textAlign: TextAlign.center,
              readOnly: true,
              onTap: () {
                setState(() {
                  _selectTime(context);
                });
              },
              decoration: InputDecoration(
                hintText: timeOfDay.format(context),
                hintStyle: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                ),
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