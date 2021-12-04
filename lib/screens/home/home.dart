// ignore_for_file: prefer_const_constructors

import 'package:bank_app_ios_ui/screens/home/chat_screen/chat_screen.dart';
import 'package:bank_app_ios_ui/screens/home/credit_card_screen/credit_card_screen.dart';
import 'package:bank_app_ios_ui/screens/home/history_screen/history_screen.dart';
import 'package:bank_app_ios_ui/screens/home/main/main.dart';
import 'package:bank_app_ios_ui/screens/home/shopping_screen/shopping_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainHome extends StatefulWidget {
  const MainHome({Key? key}) : super(key: key);

  @override
  _MainHomeState createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  int? index;

  List<Widget> bodyList = [
    MainBody(),
    ShoppingScreenBody(),
    CreditCardBody(),
    ChatScreenBody(),
    HistorScreenBody(),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    index = 0;
  }

  Widget getBody() {
    if (index == 0) {
      return MainBody();
    } else if (index == 1) {
      return ShoppingScreenBody();
    } else if (index == 2) {
      return CreditCardBody();
    } else if (index == 3) {
      return ChatScreenBody();
    } else {
      return HistorScreenBody();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
      bottomNavigationBar: _buildBottomNavigation(),
    );
  }

  Widget _buildBottomNavigation() {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      ),
      height: 70,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        child: BottomNavigationBar(
          onTap: (int value) {
            setState(() {
              index = value;
            });
          },
          currentIndex: index!,
          items: const [
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), label: ''),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.shopping_cart), label: ''),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.creditcard), label: ''),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.chat_bubble_text), label: ''),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.clock), label: ''),
          ],
        ),
      ),
    );
  }
}
