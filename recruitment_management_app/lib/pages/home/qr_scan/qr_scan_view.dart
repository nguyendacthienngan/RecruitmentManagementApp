import 'package:flutter/material.dart';


import 'package:recruitment_management_app/components/custom_bottom_nav_bar.dart';
import 'package:recruitment_management_app/enums.dart';
import 'component/body.dart';
import 'package:recruitment_management_app/constants.dart';
class QRScanPage extends StatelessWidget {
  static String routeName = "/qrScan";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'QR CODE',
          style: TextStyle(
            color: kPrimaryColor,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        iconTheme: IconThemeData(color: kPrimaryColor),
        backgroundColor: kSecondaryColor,
        elevation: 0,
      ),
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}