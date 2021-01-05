import 'package:flutter/material.dart';
import 'package:recruitment_management_app/pages/calendar/view/calendar_view.dart';
import 'services/auth.service.dart';
import 'pages/login/view/login_view.dart';
import 'pages/home/view/home_view.dart';
AuthService appAuth = new AuthService();
bool _showNavBar = true; //this is to show nav bar
Widget screen = new LoginPage();
void main() async {
  // Set default home.


  // Get result of the login function.
  // bool _result = await appAuth.login();
  // if (_result) {
  //   screen = new HomePage();
  // }

  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "Nunito"
      ),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        // Set routes for using the Navigator.
        //'/': (BuildContext context) => new LoginPage(),
        '/': (BuildContext context) => new CalendarPage(),
        '/home': (BuildContext context) =>  new HomePage(),
        '/login': (BuildContext context) => new LoginPage(),
        '/calendar': (BuildContext context) => new CalendarPage(),
      },
    );
  }
}
