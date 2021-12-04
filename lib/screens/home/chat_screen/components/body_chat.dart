// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'body_chat_1.dart';
import 'body_chat_2.dart';

class BodyChat extends StatefulWidget {
  const BodyChat({Key? key}) : super(key: key);

  @override
  _BodyChatState createState() => _BodyChatState();
}

class _BodyChatState extends State<BodyChat> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ChatBody1(),
          flex: 1,
        ),
        SizedBox(height: 20),
        Expanded(
          child: ChatBody2(),
          flex: 2,
        ),
      ],
    );
  }
}
