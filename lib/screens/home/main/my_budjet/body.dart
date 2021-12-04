// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'components/expense.dart';
import 'components/graphic.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            height: 90,
            padding: EdgeInsets.symmetric(vertical: 11, horizontal: 20),
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22),
              color: Colors.black,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '\$3250',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 5),
                    Text('September forecast \$2,52'),
                  ],
                ),
                Text('June, 2020'),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 4,
          child: Column(
            children: [
              Graphic1(),
              Expenses(),
            ],
          ),
        ),
      ],
    );
  }
}
