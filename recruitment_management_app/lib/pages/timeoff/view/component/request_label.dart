import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:recruitment_management_app/constants.dart';
import 'package:recruitment_management_app/utils.dart';
import 'package:recruitment_management_app/models/timeoff.model.dart';

class RequestLabel extends StatelessWidget
{
  final TimeOff item;
  String _leavetype=" ",_status=" ";
  double windowWidth = 0;
  double windowHeight = 0;
  GestureTapCallback onTap;
  RequestLabel({this.onTap,this.item});
  @override
  Widget build(BuildContext context) {
    if(item.leave_type==1)
      _leavetype='Sick Leave';
    else _leavetype='Another';
    if(item.event_status==1)
      _status='Accepted';
    else
      _status='Pending';
    windowWidth = MediaQuery.of(context).size.width;
    windowHeight = MediaQuery.of(context).size.height;
   return Column(
       children:[
         SizedBox(
           height: 10,
         ),
         GestureDetector(
           onTap: onTap,
           child: Container(
             padding: EdgeInsets.fromLTRB(15, 10, 15, 15),
             width: windowWidth-windowWidth/8,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(15),
               color: Colors.white,
             ),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 new Text(
                   convertDateFromString(item.start_date)+ " ~ " + convertDateFromString(item.end_date),
                   //'<date> ~ <date>',
                   style: TextStyle(
                     fontWeight: FontWeight.bold,
                     fontSize: 14,
                   ),
                 ),
                 Row(
                   children: [
                     SizedBox(
                       width: 16,
                     ),
                     Icon(
                       Icons.brightness_1,
                       color: kPrimaryLightColor,
                       size: 14,
                     ),
                     Text(
                      _status,
                      // 'Pending',
                       style: TextStyle(
                         fontStyle: FontStyle.italic,
                         color: kPrimaryColor,
                       ),
                     ),
                   ],
                 ),
                 Text(
                   'Leave Type: ' + _leavetype ,
                   style: TextStyle(
                     fontSize: 14,
                   ),
                 ),
               ],
             ),
           ),
         ),
         SizedBox(
           height: 10,
         ),
       ],
   );
  }


}