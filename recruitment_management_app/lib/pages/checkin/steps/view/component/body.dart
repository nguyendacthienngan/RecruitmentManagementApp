
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:recruitment_management_app/components/camera/CameraComponent.dart';
import 'package:recruitment_management_app/components/card/custom_card.dart';
import 'package:recruitment_management_app/components/divider_top_card_component.dart';
import 'package:recruitment_management_app/components/label/label_info_component.dart';
import 'package:recruitment_management_app/pages/checkin/steps/view/step1/check_profiles.dart';
import 'package:recruitment_management_app/pages/checkin/steps/view/step2/face_recog.dart';
class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {

  int currentStep = 0;
  bool complete = false;

  @override
  Widget build(BuildContext context) {

    bool getIsActive(int currentIndex, int index){
      if(currentIndex<=index){
        return true;
      }
      else{
        return false;
      }
    }


    List<Step> steps = [
      Step(
          title: const Text('Check Profiles'),
          state: StepState.complete,
          content: CheckProfileStep(),
          isActive: getIsActive(0,currentStep),
      ),
      Step(
        isActive: getIsActive(1,currentStep),
        state: StepState.editing,
        title: const Text('Face Recognition'),
        content: Column(
          children: <Widget>[
            FaceRegStep()
          ],
        ),
      ),

    ];
    goTo(int step) {
      setState(() => currentStep = step);
    }
    next() {
      currentStep + 1 != steps.length
          ? goTo(currentStep + 1)
          : setState(() => complete = true);
    }

    cancel() {
      if (currentStep > 0) {
        goTo(currentStep - 1);
      }
    }
    return Container(

      child: Column(children: <Widget>[
        complete ?
        Expanded(
            child: Center(
              child: AlertDialog(
                title: new Text("Profile Created"),
                content: new Text("Tada!",),
            ),
          ),
        )
        :
        Expanded(
          child: Stepper(
            steps: steps,
            type: StepperType.horizontal,
            currentStep: currentStep,
            onStepContinue: next,
            onStepTapped: (step) => goTo(step),
            onStepCancel: cancel,
          ),
        ),
      ]),
    );
  }
}
