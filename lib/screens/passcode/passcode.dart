// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:bank_app_ios_ui/constants.dart';
import 'package:bank_app_ios_ui/screens/home/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Passcode extends StatefulWidget {
  static const String routeName = '/passcode';

  const Passcode({Key? key}) : super(key: key);

  @override
  _PasscodeState createState() => _PasscodeState();
}

class _PasscodeState extends State<Passcode> {
  // List<int> val = [];

  List<bool> isEnterNumber = [false, false, false, false, false];

  int isClick = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/images/logo.png'),
        centerTitle: true,
        leading: const Icon(
          Icons.add,
          color: colBackgroundColor1,
        ),
        actions: [
          IconButton(
            onPressed: () {
              _showBottomDialog();
            },
            icon: const Icon(CupertinoIcons.ellipsis_vertical),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Enter Pass Code    ',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildCodeDots(isEnterNumber[0], 0),
                  buildCodeDots(isEnterNumber[1], 1),
                  buildCodeDots(isEnterNumber[2], 2),
                  buildCodeDots(isEnterNumber[3], 3),
                  buildCodeDots(isEnterNumber[4], 4),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 348,
            width: 281,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    buildEnterNumberPassCode(1),
                    buildEnterNumberPassCode(2),
                    buildEnterNumberPassCode(3),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    buildEnterNumberPassCode(4),
                    buildEnterNumberPassCode(5),
                    buildEnterNumberPassCode(6),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    buildEnterNumberPassCode(7),
                    buildEnterNumberPassCode(8),
                    buildEnterNumberPassCode(9),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 75,
                      width: 75,
                    ),
                    buildEnterNumberPassCode(0),
                    buildDeleteNumberinCode(),
                  ],
                ),
              ],
            ),
          ),
          CanNotLoginTextLink(),
        ],
      ),
    );
  }

  // deletebutton number in pass code
  GestureDetector buildDeleteNumberinCode() {
    return GestureDetector(
      onTap: () {
        if (isClick >= 0 && isClick < 5) {
          print('clear');

          setState(() {
            isEnterNumber[isClick] = false;
          });
          isClick--;
        } else {
          print('ishlamaydi');
          null;
        }
      },
      child: Container(
        height: 75,
        width: 75,
        alignment: Alignment.center,
        child: Icon(
          CupertinoIcons.delete_left,
          color: Colors.white,
          size: 25,
        ),
      ),
    );
  }

  //numbers
  Widget buildEnterNumberPassCode(int number) {
    return GestureDetector(
      onTap: () {
        if (isClick < 4) {
          isClick++;

          print('tolmadi xali bosor, $isClick');

          if (isClick < 5) {
            setState(() {
              isEnterNumber[isClick] = true;
            });
          }
        } else {
          print('toldi bosma, ishlamaydi');
          null;
        }
      },
      child: Container(
        height: 75,
        width: 75,
        alignment: Alignment.center,
        child: Text(
          '$number',
          style: TextStyle(color: Colors.white, fontSize: 36),
        ),
        decoration: BoxDecoration(
          color: colEnterNumberColor,
          shape: BoxShape.circle,
        ),
      ),
    );
  }

  Container buildCodeDots(bool validate, int index) {
    //isenternumber bool qiymat , raqam bosilganda teppadan true bolib keladi, index bu yerda ozim qolda berganman , 5 ta
    validate = isEnterNumber[index];

    return Container(
      height: 10,
      width: 10,
      margin: EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: validate ? Colors.white : Color(0xFF5C5762),
      ),
    );
  }

  void _showBottomDialog() {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext contex) {
          return BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: GestureDetector(
              onTap: () {
                print('kettu');
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => MainHome()));
              },
              child: Container(
                margin: EdgeInsets.all(12),
                height: 80,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(17),
                    color: Colors.white),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Demo mode  ',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(Icons.chevron_right),
                  ],
                ),
              ),
            ),
          );
        });
  }
}

class CanNotLoginTextLink extends StatelessWidget {
  const CanNotLoginTextLink({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
          overlayColor: MaterialStateProperty.all(Colors.transparent)),
      onPressed: () {},
      child: Text(
        'Can not login?',
        style: TextStyle(color: colLinkTextColor),
      ),
    );
  }
}
