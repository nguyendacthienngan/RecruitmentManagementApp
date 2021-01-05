import 'package:flutter/material.dart';
class IconButtonInactive extends StatelessWidget {
  IconButtonInactive({this.route, this.icon});
  final String route;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
          icon
      ),
      onPressed: () =>
          Navigator.pushNamed(context, route),
    );
  }
}
