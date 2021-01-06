import 'package:flutter/material.dart';
import '../../constants.dart';
class CardNavigator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.only(left: 20, right: 20),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(1),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25)
          ),
        ),
        child: GestureDetector(
          child: Row(
            children: [
              Expanded(
                flex: 11,
                child: Text(
                    "Personal Info"
                ),
              ),
              Expanded(
                flex: 1,
                child: Icon(
                    Icons.navigate_next
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
