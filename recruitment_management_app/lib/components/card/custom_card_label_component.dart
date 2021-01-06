import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recruitment_management_app/components/button/small_gradient_button.dart';
import 'package:recruitment_management_app/components/label/label_title_component.dart';
import '../button/small_cancel_button.dart';

class CustomCardLabel extends StatelessWidget {
  final String title;
  final String content1;
  final String content2;
  final String content3;
  final GestureTapCallback acceptOnPressed;
  final GestureTapCallback cancelOnPressed;
  CustomCardLabel({this.title, this.content1, this.content2, this.content3, this.acceptOnPressed, this.cancelOnPressed});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SizedBox(
                height: 10
            ),
            CustomLabelTitle(
              text: Text(
                title,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700
                ),
              )
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: CustomLabelTitle(
                  text: Text(
                    content1,
                    style: TextStyle(
                        fontSize: 14,
                    ),
                  )
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: CustomLabelTitle(
                  text: Text(
                    content2,
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  )
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: CustomLabelTitle(
                  text: Text(
                    content3,
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  )
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                SmallCancelButton(
                  btnText: 'DECLINE',
                  onPressed: cancelOnPressed,
                ),
                const SizedBox(width: 8),
                SmallGradientButton(
                  width: 100,
                  btnText: 'ACCEPT',
                  onPressed: acceptOnPressed,
                ),
                const SizedBox(width: 25),
              ],
            ),
            SizedBox(
              height: 10
            )
          ],
        ),
      ),
    );
  }
}
