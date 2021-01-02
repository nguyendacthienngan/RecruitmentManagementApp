import 'package:flutter/material.dart';

import 'ui/login-page/views/login_view.dart';
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "Nunito"
      ),
      //home: new MyHomePage(new BasicCounterPresenter(), title: 'Flutter Demo Home Page'),
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          child: Center(
            child: LoginPage(),
          ),
        )
      )
    );
  }
}
