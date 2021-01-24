import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:recruitment_management_app/constants.dart';
import 'package:recruitment_management_app/globals.dart' as globals;
import 'package:intl/intl.dart';
import 'package:recruitment_management_app/models/employee.model.dart';
import 'package:recruitment_management_app/pages/home/index/presenter/controller.dart';

class Body extends StatefulWidget {
  static final DateFormat formatter = DateFormat.yMMMMd('en_US');
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  Future<Employee> futureEmployee;
  Timer _timer;
  DateTime now =  DateTime.now();
  String dateFormatted = Body.formatter.format(DateTime.now());
  @override
  void initState() {
    super.initState();
    futureEmployee = fetchEmployee(globals.employeeID);
    _timer = Timer.periodic(
      Duration(minutes: 1),
          (Timer t) => setState(() {
        now =  DateTime.now();
        dateFormatted = Body.formatter.format(now);
      }),
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String greet;
    var hour = now.hour.toString();
    var minute = now.minute.toString();
   // var second =  now.second.toString();

    if (hour.length == 1)
      hour = "0" + hour;
    if (minute.length == 1)
      minute = "0" + minute;
    // if (second.length == 1)
    //   second = "0" + second;

    if (now.hour >= 1 &&  now.hour <= 13)
      greet = "morning";
    else if ( now.hour > 13 && now.hour <= 17)
      greet = "afternoon";
    else if (now.hour > 17 && now.hour <= 19)
      greet = "evening";
    else if (now.hour > 19 && now.hour <= 24)
      greet = "night";
    else
      greet = "day";
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.fromLTRB(16, 20, 16, 20),
          child: new Column(
            children: <Widget>[
              Row(
                children: [
                  GestureDetector(
                    child: Container(
                      margin: EdgeInsets.only(right: 10),
                      height: 40,
                      child:  Image.asset("assets/images/avatar.png"),
                    ),
                    onTap: () => {
                      Navigator.pushNamed(context, '/profile')
                    }
                  ),
                  FutureBuilder<Employee>(
                    future: futureEmployee,
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return Text("Good " + greet + ", " + snapshot.data.first_name );
                      } else if (snapshot.hasError) {
                        return Text("${snapshot.error}");
                      }
                      return CircularProgressIndicator();
                    }
                  ),
                  Expanded(child: Container()),
                  IconButton(
                      icon: Icon(
                          //Icons.qr_code_scanner_sharp
                        Icons.favorite,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/qrScan');
                  })
                ],
              ),
              Container(
                child: Text(
                  hour + ":" + minute,
                    style: new TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        foreground: Paint()..shader = linearGradient
                    ),
                ),
              ),
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 16),
                    padding: EdgeInsets.all(32),
                    decoration: BoxDecoration(
                      gradient: kPrimaryGradientColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Text(
                          "Welcome abroad! It is a great honour to have you in our team",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          dateFormatted,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14
                          ),
                        )
                      ],
                    ),
                  ),
                  Center(
                    child: Container(
                      height: 30,
                        child: Image.asset("assets/images/star.png")
                    ),
                  )
                ],
              ),
              Stack(
                children: [
                  LayoutBuilder(
                    builder: (context, constraints) {
                      return Container(
                        child: Image.asset("assets/images/thankyou.png",
                        fit: BoxFit.fill,)
                      );
                    }
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    margin: EdgeInsets.only(top: 300),
                    color: Colors.white,
                    child: Column(
                      children: [
                        FutureBuilder<Employee>(
                            future: futureEmployee,
                            builder: (context, snapshot) {
                              if (snapshot.hasData) {
                                return Text("Dear  " + snapshot.data.first_name,
                                    style: TextStyle(
                                        height: 1.5
                                    )
                                );
                              } else if (snapshot.hasError) {
                                return Text("${snapshot.error}");
                              }
                              return CircularProgressIndicator();
                            }
                        ),
                        Text(
                          "A warm welcome and lots of good wishes on becoming part of our growing team. "
                          "Congratulations and on behalf of all the members, we are all happy and"
                          " exicted about your inputs and contributions to our company",
                          style: TextStyle(
                              height: 1.5
                          )
                        ),
                      ],
                    ),
                  )
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}