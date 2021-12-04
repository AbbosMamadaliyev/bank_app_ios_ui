// ignore_for_file: prefer_const_constructors

import 'package:bank_app_ios_ui/screens/home/chat_screen/chat_screen.dart';
import 'package:bank_app_ios_ui/screens/home/credit_card_screen/credit_card_screen.dart';
import 'package:bank_app_ios_ui/screens/home/history_screen/history_screen.dart';
import 'package:bank_app_ios_ui/screens/home/main/main.dart';
import 'package:bank_app_ios_ui/screens/home/shopping_screen/shopping_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DefaultBottomNavigationBar extends StatefulWidget {
  int index;
  DefaultBottomNavigationBar({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  State<DefaultBottomNavigationBar> createState() =>
      _DefaultBottomNavigationBarState();
}

class _DefaultBottomNavigationBarState
    extends State<DefaultBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
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
              widget.index = value;
            });
          },
          currentIndex: widget.index,
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

class GetBody {
  static int index = 0;

  static Widget getBody() {
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
}
