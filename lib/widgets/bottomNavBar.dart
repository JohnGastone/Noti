// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Bottom extends StatefulWidget {
  const Bottom({super.key});

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: Color.fromARGB(255, 73, 168, 127),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.home,
                color: Color.fromARGB(255, 73, 168, 127),
                size: 30,
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.bar_chart_outlined,
                color: Color.fromARGB(255, 73, 168, 127),
                size: 30,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.account_balance_wallet_outlined,
                color: Color.fromARGB(255, 73, 168, 127),
                size: 30,
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.person_outline,
                color: Color.fromARGB(255, 73, 168, 127),
                size: 30,
              ),
            ),
          ],
        ),
      )),
    );
  }
}
