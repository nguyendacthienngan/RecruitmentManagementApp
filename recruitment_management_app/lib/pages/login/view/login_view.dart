
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:keyboard_visibility/keyboard_visibility.dart';


import '../../../constants.dart';
import '../../../main.dart';
import '../../../components/input_with_icon_component.dart';
import '../../../components/button/primary_button_component.dart';
import '../../../components/divider_top_card_component.dart';
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

  authenticateCheck()
  {
    setState(() {
      appAuth.login().then((result) {
        Navigator.of(context).pushReplacementNamed('/home');
      });
      // _pageState = 2;
    });
  }


  Widget build(BuildContext context) {

    windowWidth = MediaQuery.of(context).size.width;
    windowHeight = MediaQuery.of(context).size.height;

    _loginHeight = windowHeight - 230;
    _registerHeight = windowHeight - 230;

    switch(_pageState) {
      case 0:
        _backgroundColor = Colors.white;
        _headingColor = kPrimaryColor;

        _loginOpacity = 1;

        _loginWidth = windowWidth;
        _loginXOffset = 0;
        _loginYOffset = windowHeight;
        _registerYOffset = windowHeight;
        break;

      case 1:
        _backgroundColor = kSecondaryColor;
        _headingColor = kPrimaryColor;

        _loginOpacity = 1;

        _loginWidth = windowWidth;

        _loginXOffset = 0;

        _loginYOffset = _keyboardVisible ? 40 : 230;
        _loginHeight = _keyboardVisible ? windowHeight : windowHeight - 230;

        _registerYOffset = windowHeight;
        break;
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        child: Center(
          child: Stack(
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
                                      "Welcome",
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
                                      "Our product pursues meeting the demans of human resource management",
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
                            child: PrimaryButton(
                              width: 200,
                              btnText: "Get Started",
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
              ),
              AnimatedContainer(
                padding: EdgeInsets.fromLTRB(32, 0, 32, 32),
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
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),

                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: 12,
                        ),
                        DividerTopCard(),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 30),
                          child: Text(
                            "LOGIN",
                            style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.w600
                            ),
                          ),
                        ),
                        InputWithIcon(
                            icon: Icons.email,
                            hint: "Enter email..."
                        ),
                        SizedBox(height: 30),
                        InputWithIcon(
                            icon: Icons.vpn_key,
                            hint: "Enter password..."
                        ),
                        SizedBox(height: 50),

                      ],
                    ),
                    Column(
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            authenticateCheck();
                          },
                          child: PrimaryButton(
                            btnText: "Login",
                            width: 200,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _pageState = 0;

                            });
                          },
                          child: Center(
                              child: Text(
                                "Back",
                                style: TextStyle(
                                    color: kThirdColor
                                ),
                              )
                          ),
                        )

                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

    );
  }
}


