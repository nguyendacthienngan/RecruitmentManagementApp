import 'package:flutter/material.dart';


import 'package:recruitment_management_app/components/custom_bottom_nav_bar.dart';
import 'package:recruitment_management_app/main.dart';
import '../../../enums.dart';
import './component/body.dart';
import '../../../constants.dart';

class ProfilePage extends StatelessWidget {
  static String routeName = "/profile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'USER PROFILE',
          style: TextStyle(
            color: kPrimaryColor,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: kSecondaryColor,
        elevation: 0,
      ),
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.profile),
    );
  }
}