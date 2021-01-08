import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recruitment_management_app/components/button/edit_button_component.dart';
import 'package:recruitment_management_app/components/dropdown/white_dropdown_button_component.dart';
import 'package:recruitment_management_app/components/label/label_info_component.dart';
import 'package:recruitment_management_app/pages/profile/user_profile/view/component/card_navigator.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
           // SizedBox(height: 28),
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
                        content: "Nguyen Dac Thien Ngan",
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
        ),
      ),
    );
  }
}
