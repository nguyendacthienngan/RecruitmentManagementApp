import 'package:flutter/material.dart';
import 'package:recruitment_management_app/constants.dart';
import 'package:recruitment_management_app/pages/checkin/index/view/checkin_view.dart';
import 'package:recruitment_management_app/pages/login/view/login_view.dart';
import 'package:recruitment_management_app/pages/profile/user_profile/view/profile_view.dart';
import 'package:recruitment_management_app/pages/calendar/view/calendar_view.dart';
import 'package:recruitment_management_app/pages/timeoff/view/timeoff_view.dart';
import '../enums.dart';
import '../pages/home/index/view/home_view.dart';
import 'package:recruitment_management_app/globals.dart' as globals;
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
      ),
      child: SafeArea(
          top: false,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min, // Important
                children: [
                  SizedBox(
                    height: 35,
                    child: IconButton(
                      icon: Icon(
                          Icons.home,
                          color: selectedMenu == MenuState.home ? kPrimaryColor : inActiveIconColor,
                      ),
                      onPressed: () =>
                      {
                        if (selectedMenu != MenuState.home)
                        {
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(builder: (context) => HomePage()),
                                (Route<dynamic> route) => false,),
                        }
                      }
                    ),
                  ),
                  Text(
                      "Home",
                      style: TextStyle(
                        color: selectedMenu == MenuState.home ? kPrimaryColor : inActiveIconColor,
                      ),
                  ),
                ],
              ),
              globals.role == 0 ? Container(width: 0.0, height: 0.0) : Column(
                mainAxisSize: MainAxisSize.min, // Important
                children: [
                  SizedBox(
                    height: 35,
                    child: IconButton(
                      icon: Icon(
                        Icons.calendar_today,
                        color: selectedMenu == MenuState.calendar ? kPrimaryColor : inActiveIconColor,
                      ),
                      onPressed: () =>
                      {
                        if (selectedMenu != MenuState.calendar)
                        {
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(builder: (context) => CalendarPage()),
                                (Route<dynamic> route) => false,),
                        }
                      }
                    ),
                  ),
                  Text(
                    "Calendar",
                    style: TextStyle(
                      color: selectedMenu == MenuState.calendar ? kPrimaryColor : inActiveIconColor,
                    ),
                  ),
                ],
              ),
              globals.role == 0 ? Container(width: 0.0, height: 0.0) : Column(
                mainAxisSize: MainAxisSize.min, // Important
                children: [
                  SizedBox(
                    height: 35,
                    child: IconButton(
                      icon: Icon(
                        Icons.timer,
                        color: selectedMenu == MenuState.timeOff ? kPrimaryColor : inActiveIconColor,
                      ),
                      onPressed: () =>
                      {
                        if (selectedMenu != MenuState.timeOff)
                        {
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(builder: (context) => TimeOffPage()),
                                (Route<dynamic> route) => false,),
                        }
                      }

                    ),
                  ),
                  Text(
                    "Time Off",
                    style: TextStyle(
                      color: selectedMenu == MenuState.timeOff ? kPrimaryColor : inActiveIconColor,
                    ),
                  ),
                ],
              ),
              // Column(
              //   mainAxisSize: MainAxisSize.min, // Important
              //   children: [
              //     SizedBox(
              //       height: 35,
              //       child: IconButton(
              //         icon: Icon(
              //           Icons.camera,
              //           color: selectedMenu == MenuState.checkIn ? kPrimaryColor : inActiveIconColor,
              //         ),
              //         onPressed: () =>
              //         {
              //           if (selectedMenu != MenuState.checkIn)
              //             {
              //               Navigator.pushAndRemoveUntil(
              //                 context,
              //                 MaterialPageRoute(builder: (context) => CheckInPage()),
              //                     (Route<dynamic> route) => false,),
              //             }
              //         }
              //       ),
              //     ),
              //     Text(
              //       "Check In",
              //       style: TextStyle(
              //         color: selectedMenu == MenuState.checkIn ? kPrimaryColor : inActiveIconColor,
              //       ),
              //     ),
              //   ],
              // ),
              globals.role == 0 ? Container(width: 0.0, height: 0.0) :Column(
                mainAxisSize: MainAxisSize.min, // Important
                children: [
                  SizedBox(
                    height: 35,
                    child: IconButton(
                      icon: Icon(
                        Icons.people,
                        color: selectedMenu == MenuState.profile ? kPrimaryColor : inActiveIconColor,
                      ),
                      onPressed: () =>
                      {
                        if (selectedMenu != MenuState.profile)
                        {
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(builder: (context) => ProfilePage()),
                                (Route<dynamic> route) => false,),
                        }
                      }
                    ),
                  ),
                  Text(
                    "Profile",
                    style: TextStyle(
                      color: selectedMenu == MenuState.profile ? kPrimaryColor : inActiveIconColor,
                    ),
                  ),
                ],
              ),
              globals.role != 0 ? Container(width: 0.0, height: 0.0) :Column(
                mainAxisSize: MainAxisSize.min, // Important
                children: [
                  SizedBox(
                    height: 35,
                    child: IconButton(
                        icon: Icon(
                          Icons.favorite,
                          //Icons.login_sharp,
                          color: selectedMenu == MenuState.login ? kPrimaryColor : inActiveIconColor,
                        ),
                        onPressed: () =>
                        {
                          if (selectedMenu != MenuState.login)
                            {
                              Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(builder: (context) => LoginPage()),
                                    (Route<dynamic> route) => false,),
                            }
                        }
                    ),
                  ),
                  Text(
                    "Sign In",
                    style: TextStyle(
                      color: selectedMenu == MenuState.profile ? kPrimaryColor : inActiveIconColor,
                    ),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
