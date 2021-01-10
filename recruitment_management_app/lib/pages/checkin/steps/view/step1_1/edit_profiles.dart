import 'package:flutter/material.dart';
import 'package:recruitment_management_app/components/custom_bottom_nav_bar.dart';
import 'package:recruitment_management_app/constants.dart';
import 'package:recruitment_management_app/enums.dart';

import 'component/body.dart';
class EditProfilesStep extends StatelessWidget {

  static String routeName = "/personalInfo";
  @override
  Widget build(BuildContext context) {
    final double windowWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'EDIT PROFILES',
          style: TextStyle(
            color: kPrimaryColor,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: kSecondaryColor,
        iconTheme: IconThemeData(
          color: kPrimaryColor
        ),
        elevation: 0,
      ),
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.checkIn),
    );
  }
}
