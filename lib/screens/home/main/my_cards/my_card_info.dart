// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bank_app_ios_ui/app_components/bottomnaviagtionbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'bodies/card_info_body.dart';
import 'bodies/transaction_body.dart';

class MyCardInfo extends StatefulWidget {
  static const String routeName = '/card_info';

  final int color;
  final int balance;
  final int numberCard;

  const MyCardInfo(
      {Key? key,
      required this.color,
      required this.balance,
      required this.numberCard})
      : super(key: key);

  @override
  _MyCardInfoState createState() => _MyCardInfoState();
}

class _MyCardInfoState extends State<MyCardInfo> {
  int? index;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    index = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Your card'),
      ),
      body: Column(
        children: [
          CardInfoBody(widget: widget),
          SizedBox(height: 20),
          TransactionBody(),
        ],
      ),
      bottomNavigationBar: DefaultBottomNavigationBar(index: index!),
    );
  }
}
