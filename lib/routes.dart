import 'package:MarketPlus/main.dart';
import 'package:MarketPlus/pages/logIn.dart';
import 'package:MarketPlus/pages/splashScreen.dart';
import 'package:flutter/material.dart';
import 'package:MarketPlus/pages/home.dart';

Map<String, Widget Function(BuildContext)> routes = {
  'home': (BuildContext context) => Home(),
  'login': (BuildContext context) => LoginPage(),
  'splashScreen': (BuildContext context) => SplashScreen(),
  '/': (BuildContext context) => MyApp(),
};
