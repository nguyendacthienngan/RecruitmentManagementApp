import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recruitment_management_app/main.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.fromLTRB(16, 20, 16, 20),
          child: new Column(
            children: <Widget>[
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    height: 40,
                    child:  Image.asset("assets/images/avatar.png"),
                  ),
                  Text("Good afternoon, Thiên Ngân"),
                  Expanded(child: Container()),
                  IconButton(
                      icon: Icon(
                          Icons.qr_code_scanner_sharp
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/qrScan');
                  })
                ],
              ),
              Container(
                  child: Image.asset("assets/images/thankyou.png",
                    fit: BoxFit.fill,)
              ),

            ],
          ),
        ),
      ),
    );
  }
}