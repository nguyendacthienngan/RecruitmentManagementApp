import 'package:flutter/material.dart';


const root = "http://10.0.2.2:8080/v1/";
const kPrimaryColor = Color(0xFF222B45);
const kPrimaryLightColor = Color(0xFF20CEF5);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [Color(0xFF20CEF5), Color(0xFF3392D7)],
);
final Shader linearGradient = LinearGradient(
  colors: <Color>[Color(0xFF20CEF5), Color(0xFF3392D7)],
).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));
const kSecondaryColor = Color(0xFFF9F8F6);
const kThirdColor = Color(0xFF828281);
const kThirdGradientColor = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [Colors.transparent, Colors.transparent],
);
Map<int, Widget> segmentedcontrolChildren = {
  0: SizedBox(
    width: 100,
    child: Center(
      child: Text(
        'MINE',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  ),
  1: SizedBox(
    width: 100,
    child: Center(
      child: Text(
        'TEAM',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  ),
};
