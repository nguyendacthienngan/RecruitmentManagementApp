import 'package:flutter/material.dart';

class CustomLabel extends StatelessWidget {
  final String title;
  final String content;
  CustomLabel({this.title, this.content});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 32, 0, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 80,
              child: Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 16
                ),
              ),
            ),
            Flexible(
              child: SizedBox(
                width: 200,
                child: Text(
                  content,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ]
      ),
    );
  }
}
