import 'package:flutter/material.dart';
import 'package:recruitment_management_app/constants.dart';
import 'package:recruitment_management_app/pages/profile/view/profile_view.dart';
import '../enums.dart';
import '../pages/home/view/home_view.dart';
import 'linear_gradient_mask.dart';
class CustomBottomNavBar extends StatelessWidget {

  const CustomBottomNavBar({
    Key key,
    @required this.selectedMenu,
  }) : super(key: key);

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    final Color inActiveIconColor = Color(0xFFB6B6B6);
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
                icon: LinearGradientMask(
                  child: Icon(
                    Icons.home,
                  ),
                ),
                onPressed: () =>
                    Navigator.pushNamed(context, HomePage.routeName),
              ),
              IconButton(
                icon: Icon(Icons.calendar_today),

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
                    Navigator.pushNamed(context, ProfilePage.routeName),
              ),
            ],
          )),
    );
  }
}
