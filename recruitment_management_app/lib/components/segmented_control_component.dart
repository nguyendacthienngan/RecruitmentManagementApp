import 'package:flutter/material.dart';
import 'package:material_segmented_control/material_segmented_control.dart';
import 'package:recruitment_management_app/constants.dart';

// ignore: must_be_immutable
class SegmentedControl extends StatefulWidget
{

  final ValueChanged<int> onSegmentChosen;
  final int currentSelection;
  final Map<int, Widget> children;
  SegmentedControl({
    this.currentSelection,
    this.onSegmentChosen,
    this.children,
});
  @override
  _SegmentedControlState createState() => _SegmentedControlState();
}

class _SegmentedControlState extends State<SegmentedControl>{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialSegmentedControl(
        children: widget.children,
        selectionIndex: widget.currentSelection,
        borderColor: kPrimaryColor,
        selectedColor: Colors.white,
        unselectedColor: kPrimaryColor,
        borderRadius: 15.0,
        verticalOffset: 10.0,
        onSegmentChosen: widget.onSegmentChosen,
      ),
    );
  }
}

