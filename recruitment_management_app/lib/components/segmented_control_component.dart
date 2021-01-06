import 'package:flutter/material.dart';
import 'package:material_segmented_control/material_segmented_control.dart';
import 'package:recruitment_management_app/constants.dart';

class SegmentedControl extends StatefulWidget
{
  @override
  _SegmentedControlState createState() => _SegmentedControlState();

}

class _SegmentedControlState extends State<SegmentedControl>{
  int _currentSelection=0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialSegmentedControl(
        children: _children,
        selectionIndex: _currentSelection,
        borderColor: kPrimaryColor,
        selectedColor: Colors.white,
        unselectedColor: kPrimaryColor,
        borderRadius: 15.0,
        verticalOffset: 10.0,
        onSegmentChosen: (index) {
          setState(() {
            _currentSelection = index;
          });
        },
      ),
    );
  }
}
Map<int, Widget> _children = {
  0: SizedBox(
    width: 100,
    child: Center(
      child: Text(
        'MINE',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  ),
  1: SizedBox(
    width: 100,
    child: Center(
      child: Text(
        'TEAM',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  ),
};

