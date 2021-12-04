// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'components/body_chat.dart';

class ChatScreenBody extends StatefulWidget {
  const ChatScreenBody({Key? key}) : super(key: key);

  @override
  _ChatScreenBodyState createState() => _ChatScreenBodyState();
}

class _ChatScreenBodyState extends State<ChatScreenBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          alignment: Alignment.center,
          height: 35,
          padding: EdgeInsets.only(top: 18, left: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            color: Colors.black,
          ),
          child: Directionality(
            textDirection: TextDirection.ltr,
            child: TextField(
              decoration: InputDecoration(
                hoverColor: Colors.black,
                focusColor: Colors.black,
                fillColor: Colors.black,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide(color: Colors.transparent),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide(color: Colors.transparent),
                ),
                hintText: 'Name or number of phone',
                hintStyle: TextStyle(color: Colors.grey.shade600),
              ),
            ),
          ),
        ),
        leading: CircleAvatar(
          backgroundColor: colBackgroundColor1,
          maxRadius: 16,
          minRadius: 16,
          child: Image.asset('assets/images/avatar_main.png'),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(CupertinoIcons.chat_bubble_text),
          ),
        ],
      ),
      body: BodyChat(),
    );
  }
}
