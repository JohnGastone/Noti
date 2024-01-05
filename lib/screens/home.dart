// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(children: [
          SizedBox(
            height: 50,
          ),
          Container(
            width: double.infinity,
            height: 240,
            padding: const EdgeInsets.only(top: 5),
            decoration: const BoxDecoration(
                color: Color(0xFFEDECF2),
                borderRadius: BorderRadius.only(
                    // topLeft: Radius.circular(35),
                    // topRight: Radius.circular(35),
                    bottomLeft: Radius.circular(35),
                    bottomRight: Radius.circular(35))),
          ),
        ]),
      ),
    );
  }
}
