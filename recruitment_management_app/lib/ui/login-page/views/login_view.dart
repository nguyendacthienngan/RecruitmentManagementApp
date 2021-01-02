

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:keyboard_visibility/keyboard_visibility.dart';

import './component/input_with_icon_component.dart';
import 'component/primary_button_component.dart';
import 'component/outline_button_component.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  int _pageState = 0;
  var _backgroundColor = Colors.white;
  var _headingColor = Color(0xFFB40284A);

  double _loginOpacity = 1;

  double _loginWidth = 0;
  double _loginHeight = 0;

  double _registerHeight = 0;

  double _loginYOffset = 0;
  double _loginXOffset = 0;
  double _registerYOffset = 0;

  double windowWidth = 0;
  double windowHeight = 0;

  bool _keyboardVisible = false;
  @override
  void initState(){
    super.initState();

    KeyboardVisibilityNotification().addNewListener(
      onChange: (bool visible) {
        setState(() {
          _keyboardVisible = visible;
        });
      },
    );
  }

  Widget build(BuildContext context) {

    windowWidth = MediaQuery.of(context).size.width;
    windowHeight = MediaQuery.of(context).size.height;

    _loginHeight = windowHeight - 230;
    _registerHeight = windowHeight - 230;

    switch(_pageState) {
      case 0:
        _backgroundColor = Colors.white;
        _headingColor = Color(0xFFB40284A);

        _loginOpacity = 1;

        _loginWidth = windowWidth;
        _loginXOffset = 0;
        _loginYOffset = windowHeight;
        _registerYOffset = windowHeight;
        break;

      case 1:
        _backgroundColor = Color(0xFFBD34C59);
        _headingColor = Colors.white;

        _loginOpacity = 1;

        _loginWidth = windowWidth;

        _loginXOffset = 0;

        _loginYOffset = _keyboardVisible ? 40 : 230;
        _loginHeight = _keyboardVisible ? windowHeight : windowHeight - 230;

        _registerYOffset = windowHeight;
        break;

      case 2:
        _backgroundColor = Color(0xFFBD34C59);
        _headingColor = Colors.white;

        _loginOpacity = 0.7;

        _loginWidth = windowWidth - 40;

        _loginXOffset = 20;
        _loginYOffset = 210;

        _loginYOffset = _keyboardVisible ? 20 : 230;
        _loginHeight = _keyboardVisible ? windowHeight : windowHeight - 230;

        _registerYOffset = _keyboardVisible ? 55 : 230;
        _registerHeight = _keyboardVisible ? windowHeight : windowHeight - 230;

        break;
    }

    return Stack(
      children: [
        AnimatedContainer(
            curve: Curves.fastLinearToSlowEaseIn,
            duration: Duration(
                milliseconds: 1000
            ),
            color: _backgroundColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                GestureDetector(
                  onTap: (){
                    setState(() {
                      _pageState = 0;
                    });
                  },
                  child: Container(
                    child: Center(
                        child: Column(
                          children: <Widget>[
                            Container(
                              margin: const EdgeInsets.only(
                                  top: 100
                              ),
                              child: Text(
                                "Learn Free",
                                style: TextStyle(
                                  color: _headingColor,
                                  fontSize: 28,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(20),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 32
                              ),
                              child: Text(
                                "We make learning easy. Join WeebsHR to learn flutter for free",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: _headingColor,
                                    fontSize: 16
                                ),
                              ),
                            )
                          ],
                        )
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: 32
                  ),
                  child: Center(
                    child: Image.asset("assets/images/splash_bg.png"),
                  ),
                ),
                Container(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        if (_pageState != 0) {
                          _pageState = 0;
                        }
                        else {
                          _pageState = 1;

                        }
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.all(32),
                      padding: EdgeInsets.all(20),
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Color(0xFFB40284A),
                          borderRadius: BorderRadius.circular(50)
                      ),
                      child: Center(
                        child: Text(
                            "Get Started",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            )
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
        ),
        AnimatedContainer(
          padding: EdgeInsets.all(32),
          width: _loginWidth,
          height: _loginHeight,
          curve: Curves.fastLinearToSlowEaseIn,
          duration: Duration(
              milliseconds: 1000
          ),
          transform: Matrix4.translationValues(_loginXOffset, _loginYOffset, 1),
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(_loginOpacity),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25)
              )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    child: Text(
                      "Login To Continue",
                      style: TextStyle(
                          fontSize: 20
                      ),
                    ),
                  ),
                  InputWithIcon(
                      icon: Icons.email,
                      hint: "Enter email..."
                  ),
                  SizedBox(height: 20),
                  InputWithIcon(
                      icon: Icons.vpn_key,
                      hint: "Enter password..."
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  PrimaryButton(
                      btnText: "Login"
                  ),
                  SizedBox(
                    height: 20,

                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _pageState = 2;
                      });
                    },
                    child: OutlineBtn(
                      btnText: "Create Account",
                    ),
                  )

                ],
              ),
            ],
          ),
        ), //Login
        AnimatedContainer(
          height: _registerHeight,
          padding: EdgeInsets.all(32),
          curve: Curves.fastLinearToSlowEaseIn,
          duration: Duration(
              milliseconds: 1000
          ),
          transform: Matrix4.translationValues(0, _registerYOffset, 1),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25)
              )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    child: Text(
                      "Create a new account",
                      style: TextStyle(
                        fontSize: 20
                      ),
                    ),
                  ),
                  InputWithIcon(
                    icon: Icons.email,
                    hint: "Enter email..."
                  ),
                  SizedBox(height: 20),
                  InputWithIcon(
                      icon: Icons.vpn_key,
                      hint: "Enter password..."
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  PrimaryButton(
                      btnText: "Create Account"
                  ),
                  SizedBox(
                    height: 20,

                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _pageState = 1;
                      });
                    },
                    child: OutlineBtn(
                      btnText: "Back To Login",
                    ),
                  )

                ],
              ),
            ],
          ),
        )// Register
      ],
    );
  }
}


