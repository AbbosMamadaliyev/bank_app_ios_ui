// ignore_for_file: prefer_const_constructors

import 'package:bank_app_ios_ui/constants.dart';
import 'package:bank_app_ios_ui/screens/login/log_in.dart';
import 'package:flutter/material.dart';

import '../routs.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Colors.white),
          bodyText2: TextStyle(color: Colors.white),
        ),
        canvasColor: colBackgroundColor1,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: Color(0xF5DEF13B),
          unselectedItemColor: Colors.white,
        ),
        backgroundColor: colBackgroundColor1,
        appBarTheme: const AppBarTheme(
          backgroundColor: colBackgroundColor1,
          elevation: 0,
        ),
        scaffoldBackgroundColor: colBackgroundColor1,
      ),
      // home: const Login(),

      initialRoute: Login.routeName,
      routes: routes,
    );
  }
}
