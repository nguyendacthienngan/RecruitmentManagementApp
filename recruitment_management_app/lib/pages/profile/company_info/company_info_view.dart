import 'package:flutter/material.dart';

import 'package:recruitment_management_app/components/custom_bottom_nav_bar.dart';
import 'package:recruitment_management_app/main.dart';
import 'package:recruitment_management_app/enums.dart';
import './component/body.dart';
import 'package:recruitment_management_app/constants.dart';

class CompanyInfoPage extends StatelessWidget {
  static String routeName = "/companyInfo";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'COMPANY INFO',
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