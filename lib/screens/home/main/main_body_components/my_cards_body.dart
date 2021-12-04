// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print

import 'package:bank_app_ios_ui/screens/home/main/my_cards/my_card_info.dart';
import 'package:flutter/material.dart';

class MyCardsBody extends StatefulWidget {
  MyCardsBody({Key? key}) : super(key: key);

  @override
  State<MyCardsBody> createState() => _MyCardsBodyState();
}

class _MyCardsBodyState extends State<MyCardsBody> {
  final styleText = TextStyle(color: Colors.black, fontSize: 16);

  final styleBalanceText =
      TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170,
      child: ListView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: [
          decorationCard(color: 0xff99c2c0, balance: 1900, numberCard: 6917),
          decorationCard(color: 0xffF1FE87, balance: 3000, numberCard: 5284),
          decorationCard(color: 0xffB8A9C6, balance: 2500, numberCard: 4596),
          decorationCard(color: 0xffB8A9C6, balance: 100, numberCard: 4520),
        ],
      ),
    );
  }

  Widget decorationCard(
      {required int color, required int balance, required int numberCard}) {
    return GestureDetector(
      onTap: () {
        print('click');

        // Navigator.of(context).pushNamed(MyCardInfo.routeName);
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => MyCardInfo(
                color: color, balance: balance, numberCard: numberCard),
          ),
        );
      },
      child: Container(
        height: 170,
        width: 150,
        margin: EdgeInsets.only(left: 20),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          gradient: LinearGradient(
            end: Alignment.bottomCenter,
            begin: Alignment.topCenter,
            colors: [
              Color(0xffEAEAEA),
              Color(color),
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset('assets/images/logo_visa.png'),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Salary',
                  style: styleText,
                ),
                Text(
                  '\$ $balance',
                  style: styleBalanceText,
                ),
              ],
            ),
            Text(
              '**$numberCard',
              style: styleText,
            )
          ],
        ),
      ),
    );
  }
}
