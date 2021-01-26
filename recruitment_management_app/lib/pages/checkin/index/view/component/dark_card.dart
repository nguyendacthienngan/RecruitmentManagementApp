import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recruitment_management_app/constants.dart';
import 'package:recruitment_management_app/models/candidate.model.dart';
class DarkCheckInCard extends StatelessWidget {
  final Candidate candidate;

  DarkCheckInCard ({this.candidate});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(32, 28, 32, 28),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: kPrimaryColor
      ),
      child: Row(
        children: [
          Column(
            children: [
              SizedBox(
                height: 28,
                child: Text(
                  "14h",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w700
                  ),
                ),
              ),
              SizedBox(
                height: 28,
                child: Text(
                  "20",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w700
                  ),
                ),
              ),
            ],
          ),
          SizedBox(width: 28,),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Nguyen Dac Thien Ngan",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w700
                  ),
                ),
                SizedBox(height: 5,),
                Text(
                  "Developer",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Text(
                  "Bach Nguyen",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
