import 'package:flutter/material.dart';
import '../constants.dart';
class LinearGradientMask extends StatelessWidget {
  LinearGradientMask({this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => kPrimaryGradientColor.createShader(bounds),
      child: child,
    );
  }
}