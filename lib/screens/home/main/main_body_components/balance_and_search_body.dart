// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../constants.dart';

class BalanceAndSearchBody extends StatelessWidget {
  const BalanceAndSearchBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 25),
      child: SizedBox(
        height: 64,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('Your balance'),
                SizedBox(height: 8),
                Text(
                  '\$ 7500',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            // const Icon(Icons.search),
            GestureDetector(
              onTap: () {
                print('search');
              },
              child: Container(
                height: 35,
                width: 35,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: colEnterNumberColor,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  CupertinoIcons.search,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
