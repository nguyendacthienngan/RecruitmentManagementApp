import 'package:flutter/material.dart';
import 'package:keyboard_visibility/keyboard_visibility.dart';


class CustomCard extends StatefulWidget {
  final Widget child;
  final BuildContext context;
  final bool isVisible;
  final double yOffset;
  CustomCard({this.context, this.child, this.isVisible, this.yOffset});
  @override
  _CustomCardState createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {

  bool _keyboardVisible = false;
  @override
  void initState(){
    super.initState();

    KeyboardVisibilityNotification().addNewListener(
      onChange: (bool visible) {
        setState(() {
          _keyboardVisible = visible;
        });
      },
    );
  }

  Widget build(BuildContext context) {
    final double windowHeight = MediaQuery.of(widget.context).size.height;
    double yOffsetDefault = widget.yOffset != null ? widget.yOffset : 230;
    double yOffset = _keyboardVisible ? 40 : yOffsetDefault;
    double height = _keyboardVisible ? windowHeight :  windowHeight - yOffset;
    return AnimatedContainer(
      padding: EdgeInsets.fromLTRB(32, 0, 32, 32),
      height: height,
      curve: Curves.fastLinearToSlowEaseIn,
      duration: Duration(
          milliseconds: 1000
      ),
      transform: Matrix4.translationValues(0, widget.isVisible ? yOffset : windowHeight , 1),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(1),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25)
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: widget.child,
    );
  }
}
