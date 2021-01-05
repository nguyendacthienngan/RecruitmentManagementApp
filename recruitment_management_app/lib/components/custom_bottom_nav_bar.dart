import 'package:flutter/material.dart';
import 'package:recruitment_management_app/pages/calendar/view/calendar_view.dart';
import '../enums.dart';
import '../pages/home/view/home_view.dart';

class CustomBottomNavBar extends StatelessWidget {

  const CustomBottomNavBar({
    Key key,
    @required this.selectedMenu,
  }) : super(key: key);

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.15),
          ),
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: SafeArea(
          top: false,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: Icon(Icons.home),
                onPressed: () =>
                    Navigator.pushNamed(context, HomePage.routeName),
              ),
              IconButton(
                icon: Icon(Icons.calendar_today),
                onPressed: () =>
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => CalendarPage()),
                            (Route<dynamic> route) => false,),
              ),
              IconButton(
                icon: Icon(Icons.timer),

              ),
              IconButton(
                icon: Icon(Icons.camera),

              ),
              IconButton(
                icon: Icon(Icons.people),
                onPressed: () =>
                    Navigator.pushNamed(context, HomePage.routeName),
              ),
            ],
          )),
    );
  }
}
