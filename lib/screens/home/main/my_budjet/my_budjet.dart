// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bank_app_ios_ui/screens/home/main/my_budjet/body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyBudget extends StatefulWidget {
  const MyBudget({Key? key}) : super(key: key);

  @override
  _MyBudgetState createState() => _MyBudgetState();
}

class _MyBudgetState extends State<MyBudget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: Icon(CupertinoIcons.chevron_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text('My budget'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(CupertinoIcons.bolt_horizontal_circle),
          ),
        ],
      ),
      body: Body(),
    );
  }
}
