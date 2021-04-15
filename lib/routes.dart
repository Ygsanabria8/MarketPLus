import 'package:MarketPlus/main.dart';
import 'package:MarketPlus/pages/logIn.dart';
import 'package:MarketPlus/pages/splashScreen.dart';
import 'package:flutter/material.dart';
import 'package:MarketPlus/pages/home.dart';
import 'package:MarketPlus/pages/register.dart';

Map<String, Widget Function(BuildContext)> routes = {
  '/': (BuildContext context) => MyApp(),
  'splashScreen': (BuildContext context) => SplashScreen(),
  'home': (BuildContext context) => Home(),
  'login': (BuildContext context) => LoginPage(),
  'register': (BuildContext context) => RegisterPage(),
};
