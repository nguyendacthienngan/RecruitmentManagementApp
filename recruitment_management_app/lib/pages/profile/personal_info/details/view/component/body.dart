import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recruitment_management_app/components/button/edit_button_component.dart';
import 'package:recruitment_management_app/components/label/label_info_component.dart';
import 'package:recruitment_management_app/models/contact.model.dart';
import 'package:recruitment_management_app/models/employee.model.dart';
import 'package:recruitment_management_app/presenter/contact.presenter.dart';
import 'package:recruitment_management_app/presenter/employee.presenter.dart';
import 'package:recruitment_management_app/utils.dart';
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
                          content: snapshot.data.birth_date != null ? (snapshot.data.gender == 0 ? "Female" : "Male") : "Male",
                        ),
                        CustomLabel(
                          title: "D.O.B:",
                          content: snapshot.data.birth_date != null ? convertDateFromString(snapshot.data.birth_date) :"1/1/1999",
                        ),
                        CustomLabel(
                          title: "Email",
                          content: snapshot.data.email,
                        ),
                        CustomLabel(
                          title: "National ID:",
                          content: snapshot.data.national_id,
                        ),
                        CustomLabel(
                          title: "Address",
                          content: TiengViet.parse(snapshot.data.address),
                        ),
                        CustomLabel(
                          title: "Marital status",
                          content: snapshot.data.marital_status == 0 ? "Single" : "Married",
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
