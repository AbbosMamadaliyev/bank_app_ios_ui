// ignore_for_file: prefer_const_constructors

import 'package:bank_app_ios_ui/app_components/default_button.dart';
import 'package:bank_app_ios_ui/screens/passcode/passcode.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  static const String routeName = '/login';

  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/images/logo.png'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(CupertinoIcons.ellipsis_vertical),
          ),
        ],
      ),
      body: Column(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Image.asset('assets/images/logo_in_login.png'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                DefaultButton(
                  func: () {
                    Navigator.of(context).pushNamed(Passcode.routeName);
                  },
                  radius: 25,
                  text: 'Log in',
                  colorText: Colors.black,
                  colorValue: 0xFFDBE397,
                ),
                SizedBox(height: 16),
                DefaultButton(
                  func: () {},
                  colorValue: 0xFF363339,
                  text: 'Become a client of the bank',
                  colorText: Colors.white,
                  radius: 25,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
