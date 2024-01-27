// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:noti/screens/home.dart';
import 'package:noti/screens/statistics.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      routes: {
        "/": ((context) => Home()),
        // "cartPage": ((context) => const cartPage()),
        // "itemPage": ((context) => ItemPage()),
        // "favoritePage": ((context) => const FavoriteItems())
      },
    );
  }
}
