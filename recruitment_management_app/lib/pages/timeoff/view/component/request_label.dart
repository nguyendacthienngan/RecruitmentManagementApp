import 'package:flutter/material.dart';
import 'package:recruitment_management_app/constants.dart';

class RequestLabel extends StatelessWidget
{
  double windowWidth = 0;
  double windowHeight = 0;
  GestureTapCallback onTap;
  RequestLabel({this.onTap});
  @override
  Widget build(BuildContext context) {
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
                   '<date> ~ <date>',
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
                       'Pending',
                       style: TextStyle(
                         fontStyle: FontStyle.italic,
                         color: kPrimaryColor,
                       ),
                     ),
                   ],
                 ),
                 Text(
                   'Leave Type: Sick leave',
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