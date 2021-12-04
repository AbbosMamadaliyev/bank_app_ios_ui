// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../../../../constants.dart';

class Expenses extends StatelessWidget {
  const Expenses({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: colBackgroundColor2,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'June 15, 2020',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              _socials('assets/images/webflow.png', 'Webflow',
                  'Outcoming transfer', 48),
              _socials('assets/images/youtube.png', 'Youtube',
                  'Annual withdrawal of funds', 51),
              _socials('assets/images/sketch.png', 'Sketch',
                  'Outcoming transfer', 38),
              _socials('assets/images/unsplash.png', 'Unsplash',
                  'Outcoming transfer', 12),
            ],
          ),
        ),
      ),
    );
  }

  Padding _socials(image, String socialN, String title, double expense) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(image),
              SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    socialN,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Text(
                    title,
                  ),
                ],
              ),
            ],
          ),
          Text(
            '- \$$expense',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
          ),
        ],
      ),
    );
  }
}
