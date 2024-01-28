// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:noti/screens/home.dart';
import 'package:noti/screens/statistics.dart';
import 'package:noti/widgets/bottomNavBar.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      routes: {
        "/": ((context) => Bottom()),
        // "cartPage": ((context) => const cartPage()),
        // "itemPage": ((context) => ItemPage()),
        // "favoritePage": ((context) => const FavoriteItems())
      },
    );
  }
}
