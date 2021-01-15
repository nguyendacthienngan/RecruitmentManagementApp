import 'package:flutter/material.dart';
import 'package:recruitment_management_app/main.dart';
import 'package:recruitment_management_app/constants.dart';
import 'package:recruitment_management_app/pages/timeoff/timeoff_request/view/component/request_label_with_button.dart';


class Body extends StatefulWidget{

  @override
  _BodyState createState()=>_BodyState();
}

class _BodyState extends State<Body>{
  // ignore: must_call_super
  void initState(){
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RequestLabel(),
          ],
        ),
      ),
    );
  }


}