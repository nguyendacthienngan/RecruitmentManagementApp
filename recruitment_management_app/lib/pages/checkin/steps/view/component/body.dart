
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

import 'package:recruitment_management_app/components/camera/CameraComponent.dart';
class Body extends StatefulWidget {
  final List<CameraDescription> cameras;
  Body({this.cameras});
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<Step> steps = [
    Step(
      title: const Text('New Account'),
      isActive: true,
      state: StepState.complete,
      content: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(labelText: 'Email Address'),
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Password'),
          ),
        ],
      ),
    ),
    Step(
      isActive: false,
      state: StepState.editing,
      title: const Text('Address'),
      content: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(labelText: 'Home Address'),
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Postcode'),
          ),
        ],
      ),
    ),
    Step(
      state: StepState.error,
      title: const Text('Avatar'),
      subtitle: const Text("Error!"),
      content: Column(
        children: <Widget>[
          CircleAvatar(
            backgroundColor: Colors.red,
          )
        ],
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FittedBox(
        child: CameraCheckIn(),
      )
      // child: Column(children: <Widget>[
      //   Expanded(
      //     child: Stepper(
      //       steps: steps,
      //       type: StepperType.horizontal
      //     ),
      //   ),
      // ]),
    );
  }
}
