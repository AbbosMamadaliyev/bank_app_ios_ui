// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bank_app_ios_ui/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessagesUser extends StatefulWidget {
  String name;
  String image;

  MessagesUser({Key? key, required this.name, required this.image})
      : super(key: key);

  @override
  _MessagesUserState createState() => _MessagesUserState();
}

class _MessagesUserState extends State<MessagesUser> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: EdgeInsets.only(top: 25),
      top: false,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: AppBar(
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(CupertinoIcons.ellipsis_vertical),
              ),
            ],
            leading: IconButton(
              icon: const Icon(CupertinoIcons.back),
              onPressed: () => Navigator.of(context).pop(),
            ),
            centerTitle: true,
            title: Column(
              children: [
                Image.asset(
                  widget.image,
                  height: 32,
                  width: 32,
                ),
                const SizedBox(height: 5),
                Text(
                  widget.name,
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              flex: 7,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: ListView(
                  children: [
                    _myMessages('Translation done!', 15),
                    _myMessages('Ok!', 25),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                height: 80,
                margin: EdgeInsets.symmetric(horizontal: 20),
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          CupertinoIcons.money_dollar,
                          color: Colors.black,
                          size: 26,
                        ),
                      ),
                      backgroundColor: colDefaultColor1,
                    ),
                    Container(
                      height: 45,
                      width: 250,
                      padding: EdgeInsets.only(top: 11, left: 10),
                      decoration: BoxDecoration(
                        color: Colors.black54,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Money or message',
                          hintStyle: TextStyle(color: Colors.grey.shade700),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide.none),
                          disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide.none),
                        ),
                      ),
                    ),
                    CircleAvatar(
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          CupertinoIcons.add,
                          color: Colors.black,
                          size: 26,
                        ),
                      ),
                      backgroundColor: colDefaultColor1,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Row _myMessages(String text, int summ) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(top: 20),
          decoration: BoxDecoration(
            color: colDefaultColor1,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(30),
              bottomLeft: Radius.circular(30),
              topLeft: Radius.circular(30),
            ),
          ),
          height: 80,
          width: 150,
          padding: EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 12,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                text,
                style: TextStyle(color: Colors.black),
              ),
              Text(
                '\$$summ',
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ],
      mainAxisAlignment: MainAxisAlignment.end,
    );
  }
}
