import 'package:flutter/material.dart';
import 'package:recruitment_management_app/main.dart';
import 'package:recruitment_management_app/pages//profile/user_profile/view/component/card_navigator.dart';
import 'package:recruitment_management_app/components/dropdown/white_dropdown_button_component.dart';

import 'package:recruitment_management_app/models/employee.model.dart';
import 'package:recruitment_management_app/pages/profile/user_profile/presenter/controller.dart';
import 'package:tiengviet/tiengviet.dart';
import 'package:recruitment_management_app/globals.dart' as globals;
class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  Future<Employee> futureEmployee;
  @override
  void initState() {
    super.initState();
    futureEmployee = fetchEmployee(globals.employeeID);
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: new Column(
          children: <Widget>[
              Container(
                child:  Image.asset("assets/images/avatar.png"),
              ),
              SizedBox( height: 20,),
              Center(
                child: FutureBuilder<Employee>(
                    future: futureEmployee,
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return Text(
                          TiengViet.parse(snapshot.data.last_name.toUpperCase()) + " " + TiengViet.parse(snapshot.data.first_name.toUpperCase()),
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700
                          ),
                        );
                      } else if (snapshot.hasError) {
                        return Text("${snapshot.error}");
                      }
                      return CircularProgressIndicator();
                    }
                ),
              ),
              WhiteDropdownButton(
                  hintText: "Status",
                  listItem: ["Item 1"],
              ),
              CardNavigator(
                title: "Personal Info",
                onTap: () => {
                  Navigator.pushNamed(context, '/personalInfo')
                }
              ),
              CardNavigator(
                title: "Company Info",
                onTap: () => {
                  Navigator.pushNamed(context, '/companyInfo')
                }
              ),
              CardNavigator(
                title: "Log Out",
                onTap: () => {
                  appAuth.logout().then(
                    (_) => Navigator.of(context).pushReplacementNamed('/login')
                  )
                },
              ),
          ],
        ),
      ),
    );
  }
}