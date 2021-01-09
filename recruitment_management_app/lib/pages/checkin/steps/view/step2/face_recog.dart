import 'package:flutter/material.dart';
import 'package:recruitment_management_app/components/camera/CameraComponent.dart';
class FaceRegStep extends StatefulWidget {
  @override
  _FaceRegStepState createState() => _FaceRegStepState();
}

class _FaceRegStepState extends State<FaceRegStep> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FittedBox(
        child: CameraCheckIn(),
      ),
    );
  }
}
