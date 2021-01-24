import 'package:flutter/material.dart';
import 'package:recruitment_management_app/models/employee.model.dart';
import 'package:recruitment_management_app/models/timeoff.model.dart';
import 'package:recruitment_management_app/pages/timeoff/view/component/request_label.dart';

class RequestLabelList extends StatelessWidget {
  final List<TimeOff> items;

  RequestLabelList({Key key, this.items});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return RequestLabel(item: items[index],);
      },
    );
  }
}

