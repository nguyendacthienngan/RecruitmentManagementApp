import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recruitment_management_app/components/button/gradient_button_component.dart';
import 'package:recruitment_management_app/components/button/primary_button_component.dart';
import 'package:recruitment_management_app/components/datetimepicker/textfield_datepicker.dart';
import 'package:recruitment_management_app/components/dropdown/dropdown_button_component.dart';
import 'package:recruitment_management_app/components/input/small_input_component.dart';
import 'package:recruitment_management_app/components/label/label_title_component.dart';
import 'package:recruitment_management_app/constants.dart';
import 'package:recruitment_management_app/globals.dart' as globals;
import 'package:recruitment_management_app/models/employee.model.dart';
import 'package:recruitment_management_app/presenter/employee.presenter.dart';
import 'package:tiengviet/tiengviet.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  Future<Employee> futureEmployee;
  List<String> gender = ["Female", "Male"];
  List<String> marital = ["Single", "Married"];
  int genderInput = -1;
  int maritialStatusInput = -1;
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final emailController = TextEditingController();
  final addressController = TextEditingController(text: "Bach");
  final DOBController = TextEditingController();

  @override
  void initState() {
    super.initState();
    futureEmployee = fetchEmployee(globals.employeeID);
  }

  update()
  {
    var firstName = firstNameController.text;
    var lastName = lastNameController.text;
    var email = emailController.text;
    var address = addressController.text;
    setState(() {
      if (firstName!= null && lastName != null
      && email != null && address != null
      )
       updateEmployee(firstName, lastName, email, address){
         Navigator.pop(context) ;
       }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: FutureBuilder(
          future: futureEmployee,
          builder: (context, snapshot)
          {
            if (snapshot.hasData) {
              return Column(
                children: [
                  SizedBox(height: 16,),
                  Row(
                    children: [
                    SizedBox(width: 20),
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                                child: CustomLabelTitle(
                                  title: "First name:",
                                ),
                              ),
                            ],
                          ),
                          LayoutBuilder(
                              builder: (context, constraints) {
                                return SmallInput(
                                  controller: firstNameController..text = snapshot.data.first_name,
                                  hint: TiengViet.parse(snapshot.data.first_name),
                                  width: constraints.maxWidth -48,
                                  height: 50,
                                );
                              }
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                                child: CustomLabelTitle(
                                  title: "Last name",
                                ),
                              ),
                            ],
                          ),
                          LayoutBuilder(
                              builder: (context, constraints) {
                                return SmallInput(
                                  controller: lastNameController..text = snapshot.data.last_name,
                                  hint: TiengViet.parse(snapshot.data.last_name),
                                  width: constraints.maxWidth -48,
                                  height: 50,
                                );
                              }
                          ),
                        ],
                      ),
                    )
                    ],
                ),
                  Row(
                    children: [
                      SizedBox(width: 20),
                      Expanded(
                        flex: 1,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                                  child: CustomLabelTitle(
                                    title: "Email:",
                                  ),
                                ),
                              ],
                            ),
                            LayoutBuilder(
                                builder: (context, constraints) {
                                  return SmallInput(
                                    controller: emailController..text = snapshot.data.email,
                                    hint: snapshot.data.email,
                                    width: constraints.maxWidth -48,
                                    height: 50,
                                  );
                                }
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                                  child: CustomLabelTitle(
                                    title: "Address",
                                  ),
                                ),
                              ],
                            ),
                            LayoutBuilder(
                                builder: (context, constraints) {
                                  return SmallInput(
                                      controller: addressController..text = snapshot.data.address,
                                    hint: TiengViet.parse(snapshot.data.address),
                                    width: constraints.maxWidth -48,
                                    height: 50,
                                  );
                                }
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(width: 20),
                      Expanded(
                        flex: 1,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                                  child: CustomLabelTitle(
                                    title: "Gender:",
                                  ),
                                ),
                              ],
                            ),
                            CustomDropdownButton(
                              hintText: snapshot.data.gender == 0 ? "Female" : "Male",
                              listItem: gender,
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                                  child: CustomLabelTitle(
                                    title: "D.O.B",
                                  ),
                                ),
                              ],
                            ),
                            LayoutBuilder(
                                builder: (context, constraints) {
                                  return CustomDatePicker(
                                    width: constraints.maxWidth-20,
                                  );
                                }
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(width: 20),
                      Expanded(
                        flex: 1,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                                  child: CustomLabelTitle(
                                    title: "Marital status:",
                                  ),
                                ),
                              ],
                            ),
                            CustomDropdownButton(
                              hintText: snapshot.data.marital_status == 0 ? "Single" : "Married",
                              listItem: marital,
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container()
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      SizedBox(
                        height: 28,
                      ),
                      GestureDetector(
                        onTap: () {

                         FutureBuilder<Employee> (
                         future:  update(),
                         builder:(context, snapshot) {
                          print('In Builder');
                          }
                         );
                        },
                        child: GradientButton(
                          btnText: "Save",
                          width: 200,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                        },
                        child: Center(
                            child: Text(
                              "Back",
                              style: TextStyle(
                                  color: kThirdColor
                              ),
                            )
                        ),
                      ),
                      SizedBox(
                        height: 28,
                      ),
                    ],
                  ),
                ],
              );
            }
            else {
              return Center(child: CircularProgressIndicator());
            }
          },
        ),

      ),
    );
  }
}
