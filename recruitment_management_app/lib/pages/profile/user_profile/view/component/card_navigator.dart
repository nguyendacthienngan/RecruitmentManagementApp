import 'package:flutter/material.dart';
import 'package:recruitment_management_app/constants.dart';
class CardNavigator extends StatelessWidget {
  final String title;
  final GestureTapCallback onTap;
  CardNavigator({this.title, this.onTap});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
        padding: EdgeInsets.all(16),
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
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
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
          onTap: onTap,
        ),
      ),
    );
  }
}
