import 'package:flutter/material.dart';
import 'package:recruitment_management_app/main.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: new Column(
          children: <Widget>[
            new Text('Welcome to App!'),
            new FlatButton(
                child: new Text(
                    'Logout'
                ),
                onPressed: () {
                  appAuth.logout().then(
                          (_) => Navigator.of(context).pushReplacementNamed('/login')
                  );
                }
            )
          ],
        ),
      ),
    );
  }
}