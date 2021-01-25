import 'package:flutter/material.dart';
import 'package:recruitment_management_app/components/button/primary_button_component.dart';
import 'package:recruitment_management_app/components/dropdown/dark_dropdown_button_component.dart';
import 'package:recruitment_management_app/main.dart';
import 'package:recruitment_management_app/models/candidate.model.dart';
import 'package:recruitment_management_app/pages/checkin/index/view/component/dark_card.dart';
import 'package:recruitment_management_app/pages/checkin/index/view/component/gradient_card.dart';
import 'package:recruitment_management_app/globals.dart' as globals;
import 'package:recruitment_management_app/presenter/candidate.presenter.dart';

class GradientCardList extends StatelessWidget {
  final List<Candidate> items;
  GradientCardList({this.items});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int i = 0 ; i < items.length ; i++)
          GestureDetector(
            onTap: () => {
              if (globals.role == 0)
                Navigator.pushNamed(context, "/checkInSteps")
            },
            child: Container(
              margin: EdgeInsets.only(top: 20),
              child: GradientCheckInCard(
                  candidate: items[i]
              ),
            ),
          ),
      ],
    );
  }
}
class CardList extends StatelessWidget {
  final List<Candidate> items;
  CardList({this.items});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int i = 0 ; i < items.length ; i++)
          GestureDetector(
            onTap: () => {
              //globals.currentCandidate = items[i],
              if (globals.role == 0)
                Navigator.pushNamed(context, "/checkInSteps")
            },
            child: Container(
              margin: EdgeInsets.only(top: 20),
              child: DarkCheckInCard(
                  candidate: items[i]
              ),
            ),
          ),
      ],
    );
  }
}


class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  Future<List<Candidate>> futureCandidate1;
  Future<List<Candidate>> futureCandidate2;
  @override
  void initState() {
    super.initState();
    futureCandidate1 = fetchCandidates(5);
    futureCandidate2 = fetchCandidates(6);
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
          child: new Column(
            children: <Widget>[
              Container(
                child: Row(
                  children: [
                    Text(
                        "CHECK IN",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                          fontSize: 18
                        ),
                    ),
                    Expanded(
                      child: Container(),
                    ),
                    DarkDropdownButton(
                      hintText: "SORT",
                      height: 200,
                      width: 40,
                      listItem: ["Item 1", "Item 2"],
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  Container(
                    child: Text(
                      "Monday, 4th january 2021"
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Text(
                        "WAITING",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 18
                      ),
                    ),
                  ),
                ],
              ),

              FutureBuilder(
                future: futureCandidate1,
                builder: (c, s) {
                    if (s.hasData)
                      {
                        return GradientCardList(items: s.data);
                      }
                    else
                       return CircularProgressIndicator();
                }
              ),

              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Text(
                      "DONE CHECK-IN",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 18
                      ),
                    ),
                  ),
                ],
              ),
              FutureBuilder(
                  future: futureCandidate2,
                  builder: (c, s) {
                    if (s.hasData)
                      return CardList(items: s.data);
                    else
                      return CircularProgressIndicator();
                  }
              ),
            ],
          ),
        ),
      ),
    );
  }
}