import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recruitment_management_app/components/button/edit_button_component.dart';
import 'package:recruitment_management_app/components/label/label_info_component.dart';
import 'package:recruitment_management_app/models/employee.model.dart';
import 'package:recruitment_management_app/pages/profile/personal_info/details/presenter/controller.dart';
import 'package:tiengviet/tiengviet.dart';
class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  Future<Employee> futureEmployee;
  @override
  void initState() {
    super.initState();
    futureEmployee = fetchEmployee();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: FutureBuilder<Employee>(
          future: futureEmployee,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Container(),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 28),
                        child:  Image.asset("assets/images/avatar.png"),
                      ),
                      Expanded(
                          child: EditButton(
                            onPressed: () => {
                              Navigator.pushNamed(context, '/personalInfoEdit')
                            },
                          )
                      )
                    ],
                  ),
                  SizedBox(
                      height: 28
                  ),
                  Center(
                    child: Column(
                      children: [

                        CustomLabel(
                          title: "Full name",
                          content: TiengViet.parse(snapshot.data.last_name) + " " + TiengViet.parse(snapshot.data.first_name),
                        ),
                        CustomLabel(
                          title: "Gender",
                          content: "Female",
                        ),
                        CustomLabel(
                          title: "D.O.B:",
                          content: "15/05/2000",
                        ),
                        CustomLabel(
                          title: "Email",
                          content: "nguyendacthienngan@gmail.com",
                        ),
                        CustomLabel(
                          title: "National ID:",
                          content: "0123333333333",
                        ),
                        CustomLabel(
                          title: "Address",
                          content: "239/22 Nguyen Van Cong P3 Q.Go Vap",
                        ),
                        CustomLabel(
                          title: "Phone number",
                          content: "0123333333333",
                        ),
                        CustomLabel(
                          title: "Marital status",
                          content: "Single",
                        ),
                      ],
                    ),
                  ),
                ],
              );
            }
            else {
              return Center(child: CircularProgressIndicator());
            }
          }
        ),
      ),
    );
  }
}
