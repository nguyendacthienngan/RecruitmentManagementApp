import 'package:flutter/material.dart';
import 'package:recruitment_management_app/main.dart';
import 'package:recruitment_management_app/constants.dart';
import 'package:recruitment_management_app/models/timeoffstatus.model.dart';
import 'package:recruitment_management_app/pages/timeoff/presenter/controller.dart';
import 'package:recruitment_management_app/pages/timeoff/timeoff_request/view/component/request_label_with_button.dart';


class Body extends StatefulWidget{
  @override
  _BodyState createState()=>_BodyState();
}

class _BodyState extends State<Body>{
  Future<TimeOffStatus> futurestatus;
  // ignore: must_call_super
  void initState(){
    super.initState();
    futurestatus=fetchTimeOffStatus();
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
            FutureBuilder<TimeOffStatus>(
              future: futurestatus,
              builder: (context,snapshot){
                if (snapshot.hasData){
                  for (var i in snapshot.data.pending)
                    return RequestLabel(item: i);
                }
                else if (snapshot.hasError) print(snapshot.error);
                return Center(child: Text('No request time off in this period'));
              },
            ),

          ],
        ),
      ),
    );
  }


}