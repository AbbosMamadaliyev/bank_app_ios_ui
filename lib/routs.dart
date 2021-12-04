import 'package:bank_app_ios_ui/screens/login/log_in.dart';
import 'package:bank_app_ios_ui/screens/passcode/passcode.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  Login.routeName: (context) => const Login(),
  Passcode.routeName: (context) => const Passcode(),
  // MyCardInfo.routeName: (context) => const MyCardInfo(),
  // LoginSuccesScreen.routeName: (context) => const LoginSuccesScreen(),
  // SignUpScreen.routeName: (context) => const SignUpScreen(),
  // CompleteProfile.routeName: (context) => const CompleteProfile(),
};
