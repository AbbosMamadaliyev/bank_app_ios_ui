// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:bank_app_ios_ui/screens/home/main/my_cards/components/filter_cards_in_transaction_body.dart';
import 'package:bank_app_ios_ui/screens/home/main/my_cards/components/transfers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../constants.dart';

class TransactionBody extends StatefulWidget {
  const TransactionBody({
    Key? key,
  }) : super(key: key);

  @override
  State<TransactionBody> createState() => _TransactionBodyState();
}

class _TransactionBodyState extends State<TransactionBody> {
  final _decoration = const BoxDecoration(
    borderRadius: BorderRadius.only(
      topRight: Radius.circular(30),
      topLeft: Radius.circular(30),
    ),
    color: Color(0xff252626),
  );

  bool isCheckTransfers = false;
  bool isCheckHealth = false;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
        width: double.infinity,
        decoration: _decoration,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _textAndFilterButton(),
              Transfers(
                transferSum: 3.15,
                healthSum: 2.75,
                transferDay: 'Today',
              ),
              Transfers(
                transferDay: 'June 13th',
                healthSum: 5.25,
                transferSum: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _textAndFilterButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Transactions',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        GestureDetector(
          onTap: () {
            print('click filter');

            _showFilters();
          },
          child: Container(
            height: 45,
            width: 95,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: colBackgroundColor1,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Text('Filter'),
                Icon(
                  CupertinoIcons.chevron_down,
                  color: Colors.white,
                  size: 18,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  void _showFilters() {
    showModalBottomSheet(
        backgroundColor: colBackgroundColor2,
        context: context,
        builder: (BuildContext context) {
          return BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Container(
              margin: const EdgeInsets.all(12),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17),
                  color: colBackgroundColor1),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Transfers to cards \nand accounts',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  _buildTransfers(),
                  SizedBox(height: 12),
                  _buildHealth(),
                  SizedBox(height: 20),
                  FilterCardCheks(),
                ],
              ),
            ),
          );
        });
  }

  Widget _buildTransfers() {
    return StatefulBuilder(builder: (context, setState) {
      return Row(
        children: [
          Row(
            children: [
              const CircleAvatar(
                child: Icon(
                  CupertinoIcons.arrow_down_to_line,
                  color: Colors.black,
                ),
                backgroundColor: colDefaultColor1,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Transfer',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Checkbox(
              value: isCheckTransfers,
              checkColor: Colors.black,
              activeColor: colDefaultColor2,
              onChanged: (newValue) {
                print(newValue);
                setState(() {
                  isCheckTransfers = newValue!;
                });
              }),
        ],
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      );
    });
  }

  Widget _buildHealth() {
    return StatefulBuilder(
        builder: (BuildContext context, StateSetter setState) {
      return Row(
        children: [
          Row(
            children: [
              const CircleAvatar(
                child: Icon(
                  CupertinoIcons.arrow_up_to_line,
                  color: Colors.black,
                ),
                backgroundColor: colDefaultColor2,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Health',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Checkbox(
              value: isCheckHealth,
              checkColor: Colors.black,
              activeColor: colDefaultColor2,
              onChanged: (newValue) {
                setState(() {
                  print(newValue);
                  isCheckHealth = newValue!;
                });
              }),
        ],
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      );
    });
  }
}
