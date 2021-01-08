import 'package:flutter/material.dart';
class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, 80, 0, 40),
                child:  Image.asset("assets/images/logo.png"),
              ),
              Text(
                "Company website: weebhr.com"
              ),
              Text(
                  "Language: English"
              ),
              Text(
                  "Contact number: (028) 1111 2222 3333"
              ),
              Text(
                  "Contact info: CEO"
              ),
            ],
          ),
        ),
      ),
    );
  }
}
