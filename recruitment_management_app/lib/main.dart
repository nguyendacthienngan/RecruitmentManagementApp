import 'package:flutter/material.dart';
import 'services/auth.service.dart';
import 'pages/login/view/login_view.dart';
import 'pages/home/view/home_view.dart';
import 'pages/profile/view/profile_view.dart';
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
        fontFamily: "Karla"
      ),
      initialRoute: '/home',
      routes: <String, WidgetBuilder>{
        // Set routes for using the Navigator.
        '/': (BuildContext context) => new LoginPage(),
        '/home': (BuildContext context) =>  new HomePage(),
        '/login': (BuildContext context) => new LoginPage(),
        '/profile': (BuildContext context) => new ProfilePage(),
      },
    );
  }
}
