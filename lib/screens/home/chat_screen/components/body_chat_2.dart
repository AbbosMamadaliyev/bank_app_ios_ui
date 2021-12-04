// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bank_app_ios_ui/screens/home/chat_screen/messages/masseges.dart';
import 'package:flutter/material.dart';

import '../../../../constants.dart';

class ChatBody2 extends StatefulWidget {
  const ChatBody2({
    Key? key,
  }) : super(key: key);

  @override
  State<ChatBody2> createState() => _ChatBody2State();
}

class _ChatBody2State extends State<ChatBody2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 30, right: 22, left: 22),
      decoration: BoxDecoration(
        color: colBackgroundColor2,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30),
          topLeft: Radius.circular(30),
        ),
      ),
      child: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          Text(
            'Messages',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          _buildMessagesUsers('assets/images/user.png', 'LouBank',
              'Updates! Find out what\'s new ...', '12 Feb'),
          _buildMessagesUsers('assets/images/user4.png', 'Jeniffer',
              'Hi! I return the debt', '10 Feb'),
          _buildMessagesUsers(
              'assets/images/user3.png', 'John', 'Thanks!', '09 Feb'),
          _buildMessagesUsers(
              'assets/images/user2.png', 'Maya', 'Transfer', '05 Feb'),
          _buildMessagesUsers('assets/images/user1.png', 'Sister Alice',
              'Hi! I return the debt', '05 Feb'),
        ],
      ),
    );
  }

  Widget _buildMessagesUsers(image, String name, String message, String date) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: GestureDetector(
        onTap: () {
          print('chat: $name messages');

          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => MessagesUser(
                image: image,
                name: name,
              ),
            ),
          );
        },
        child: Container(
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(image),
                  SizedBox(width: 14),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        message,
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
              Text(date),
            ],
          ),
        ),
      ),
    );
  }
}
