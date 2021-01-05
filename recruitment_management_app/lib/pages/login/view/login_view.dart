
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recruitment_management_app/components/custom_card.dart';


import '../../../constants.dart';
import '../../../main.dart';
import '../../../components/input/input_with_icon_component.dart';
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

  double windowWidth = 0;
  double windowHeight = 0;

  @override
  void initState(){
    super.initState();
  }

  authenticateCheck()
  {
    setState(() {
      appAuth.login().then((result) {
        Navigator.of(context).pushReplacementNamed('/home');
      });
    });
  }


  Widget build(BuildContext context) {

    windowWidth = MediaQuery.of(context).size.width;
    windowHeight = MediaQuery.of(context).size.height;

    switch(_pageState) {
      case 0:
        _backgroundColor = Colors.white;
        _headingColor = kPrimaryColor;
        break;

      case 1:
        _backgroundColor = kSecondaryColor;
        _headingColor = kPrimaryColor;
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
              CustomCard(
                isVisible: _pageState == 0 ? false : true,
                context: context,
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


