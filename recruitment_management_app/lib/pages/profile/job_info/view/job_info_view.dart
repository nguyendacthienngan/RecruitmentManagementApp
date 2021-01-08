import 'package:flutter/material.dart';

import 'package:recruitment_management_app/components/custom_bottom_nav_bar.dart';
import 'package:recruitment_management_app/main.dart';
import 'package:recruitment_management_app/enums.dart';
import './component/body.dart';
import 'package:recruitment_management_app/constants.dart';

class JobInfoPage extends StatelessWidget {
  static String routeName = "/jobInfo";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'JOB INFO',
          style: TextStyle(
            color: kSecondaryColor,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: kPrimaryColor,
        elevation: 0,
      ),
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.profile),
    );
  }
}