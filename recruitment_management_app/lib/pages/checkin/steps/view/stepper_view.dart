import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

import 'package:recruitment_management_app/enums.dart';
import './component/body.dart';
import 'package:recruitment_management_app/constants.dart';
import 'package:recruitment_management_app/components/custom_bottom_nav_bar.dart';
class CheckInStepsPage extends StatefulWidget{
  static String routeName = "/checkInSteps";
  @override
  _CheckInStepsPageState createState() => _CheckInStepsPageState();
}

class _CheckInStepsPageState extends State<CheckInStepsPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'CHECK IN',
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
      bottomNavigationBar: CustomBottomNavBar(
        selectedMenu: MenuState.checkIn,
      ),
    );
  }
}