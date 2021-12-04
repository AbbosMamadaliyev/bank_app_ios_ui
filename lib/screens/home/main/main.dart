// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bank_app_ios_ui/screens/home/main/main_body_components/balance_and_search_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'main_body_components/my_bonuce_card.dart';
import 'main_body_components/my_cards_body.dart';

class MainBody extends StatefulWidget {
  const MainBody({Key? key}) : super(key: key);

  @override
  _MainBodyState createState() => _MainBodyState();
}

class _MainBodyState extends State<MainBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/images/logo.png'),
        centerTitle: true,
        leading: CircleAvatar(
          backgroundColor: colBackgroundColor1,
          maxRadius: 16,
          minRadius: 16,
          child: Image.asset('assets/images/avatar_main.png'),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BalanceAndSearchBody(),
          MyCardsBody(),
          MyBonuceCards(),
        ],
      ),
    );
  }
}
