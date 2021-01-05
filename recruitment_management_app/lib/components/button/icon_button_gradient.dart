import 'package:flutter/material.dart';
import '../linear_gradient_mask.dart';
class IconButtonGradient extends StatelessWidget {
  IconButtonGradient({this.route, this.icon});
  final String route;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: LinearGradientMask(
        child: Icon(
          icon
        ),
      ),
      onPressed: () =>
          Navigator.pushNamed(context, route),
    );
  }
}
