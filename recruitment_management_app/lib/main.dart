import 'package:flutter/material.dart';
import 'package:recruitment_management_app/constants.dart';
import 'package:recruitment_management_app/pages/calendar/view/calendar_view.dart';
import 'package:recruitment_management_app/pages/checkin/steps/view/step1_1/edit_profiles.dart';
import 'package:recruitment_management_app/pages/checkin/steps/view/stepper_view.dart';
import 'package:recruitment_management_app/pages/home/qr_scan/qr_scan_view.dart';
import 'package:recruitment_management_app/pages/profile/company_info/company_info_view.dart';
import 'package:recruitment_management_app/pages/profile/job_info/view/job_info_view.dart';
import 'package:recruitment_management_app/pages/profile/personal_info/details/view/personal_info_details_view.dart';
import 'package:recruitment_management_app/pages/profile/personal_info/edit/view/personal_info_edit_view.dart';
import 'package:recruitment_management_app/pages/timeoff/timeoff_request/timeoff_request_view.dart';
import 'package:recruitment_management_app/pages/timeoff/view/timeoff_view.dart';
import 'services/auth.service.dart';
import 'pages/login/view/login_view.dart';
import 'pages/home/index/view/home_view.dart';
import 'pages/profile/user_profile/view/profile_view.dart';

AuthService appAuth = new AuthService();
bool _showNavBar = true; //this is to show nav bar
Widget screen = new LoginPage();

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "Karla",
        canvasColor: kSecondaryColor
      ),
      initialRoute: '/home',
      routes: <String, WidgetBuilder>{
        // Set routes for using the Navigator.
        '/': (BuildContext context) => new LoginPage(),
        '/home': (BuildContext context) =>  new HomePage(),
        '/login': (BuildContext context) => new LoginPage(),
        '/profile': (BuildContext context) => new ProfilePage(),
        '/calendar': (BuildContext context) => new CalendarPage(),
        '/timeoff': (BuildContext context) => new TimeOffPage(),
        '/timeoff/request': (BuildContext context) => new TimeOffRequest(),
        '/personalInfo': (BuildContext contexxt) => new PersonalInfoPage(),
        '/personalInfoEdit': (BuildContext contexxt) => new PersonalInfoEdit(),
        '/jobInfo': (BuildContext contexxt) => new JobInfoPage(),
        '/companyInfo': (BuildContext contexxt) => new CompanyInfoPage(),
        '/checkInSteps':  (BuildContext contexxt) => new CheckInStepsPage(),
        '/editProfileStep': (BuildContext contexxt) => new EditProfilesStep(),
        '/qrScan' : (BuildContext contexxt) => new QRScanPage(),
      },
    );
  }
}
