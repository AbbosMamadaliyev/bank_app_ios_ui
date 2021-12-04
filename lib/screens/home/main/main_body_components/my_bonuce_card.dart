// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bank_app_ios_ui/screens/home/main/my_budjet/my_budjet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyBonuceCards extends StatefulWidget {
  MyBonuceCards({Key? key}) : super(key: key);

  @override
  State<MyBonuceCards> createState() => _MyBonuceCardsState();
}

class _MyBonuceCardsState extends State<MyBonuceCards> {
  final styleText = TextStyle(color: Colors.black, fontSize: 16);

  final styleBalanceText =
      TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text('Finance'),
        ),
        SizedBox(
          height: 100,
          child: ListView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            children: [
              decorationCard(context,
                  iconData: CupertinoIcons.star,
                  text: 'My Bonuses',
                  color: 0xffF2FE8D),
              decorationCard(context,
                  iconData: CupertinoIcons.chart_bar_alt_fill,
                  text: 'Finance Analysis',
                  color: 0xffB2D0CE),
              decorationCard(context,
                  iconData: CupertinoIcons.creditcard,
                  text: 'My Budjet',
                  color: 0xffAA9EB7),
              decorationCard(context,
                  iconData: CupertinoIcons.add,
                  text: 'My Bonuses',
                  color: 0xffF2FE8D),
            ],
          ),
        ),
      ],
    );
  }

  Widget decorationCard(context,
      {required IconData iconData, required String text, required int color}) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => MyBudget()),
        );
      },
      child: Container(
        height: 100,
        width: 100,
        margin: EdgeInsets.only(left: 20),
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0xff252626),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 28,
              width: 28,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Color(color),
              ),
              child: Icon(iconData),
            ),
            Text(
              text,
              style: TextStyle(fontSize: 11),
            )
          ],
        ),
      ),
    );
  }
}
