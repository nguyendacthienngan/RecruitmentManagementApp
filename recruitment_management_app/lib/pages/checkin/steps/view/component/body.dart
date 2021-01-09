
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:recruitment_management_app/components/camera/CameraComponent.dart';
import 'package:recruitment_management_app/components/card/custom_card.dart';
import 'package:recruitment_management_app/components/divider_top_card_component.dart';
import 'package:recruitment_management_app/components/label/label_info_component.dart';
class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<Step> steps = [
    Step(
      title: const Text('Check Profiles'),
      isActive: true,
      state: StepState.complete,
      content: CheckProfileStep()
    ),
    Step(
      isActive: false,
      state: StepState.editing,
      title: const Text('Face Recognition'),
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
      title: const Text('Check in'),
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

  int currentStep = 0;
  bool complete = false;

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

  goTo(int step) {
    setState(() => currentStep = step);
  }
  @override
  Widget build(BuildContext context) {
    return Container(

      child: Column(children: <Widget>[
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

class CheckProfileStep extends StatefulWidget {
  @override
  _CheckProfileStepState createState() => _CheckProfileStepState();
}

class _CheckProfileStepState extends State<CheckProfileStep> {

  @override
  Widget build(BuildContext context) {

    final double windowWidth = MediaQuery.of(context).size.width;

    return SizedBox(
      width: windowWidth,
    child: Container(
        child:  CustomCard(
            context: context,
            isVisible: true,
            yOffset: 0,
            height: 200,
            child: Column(
              children: [
                SizedBox(
                  height: 12,
                ),
                DividerTopCard(),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    CustomLabel(
                      title: "Hello",
                      content: "Hello",
                    )
                  ],
                ),
              ],
            )
        )
      ),
    );
  }
}
