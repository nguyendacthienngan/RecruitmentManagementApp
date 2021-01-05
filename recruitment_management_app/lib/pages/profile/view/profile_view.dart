import 'package:flutter/material.dart';


import 'package:recruitment_management_app/components/custom_bottom_nav_bar.dart';
import 'package:recruitment_management_app/main.dart';
import '../../../enums.dart';
import './component/body.dart';

class ProfilePage extends StatelessWidget {
  static String routeName = "/profile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.profile),
    );
  }
}