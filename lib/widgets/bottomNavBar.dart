// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:noti/screens/add.dart';
import 'package:noti/screens/home.dart';
import 'package:noti/screens/statistics.dart';

class Bottom extends StatefulWidget {
  const Bottom({super.key});

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  int index_color = 0;
  List screen = [Home(), Statistics(), Home(), Statistics()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[index_color],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: ((context) => Add_Screen())));
        },
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
              onTap: () {
                setState(() {
                  index_color = 0;
                });
              },
              child: Icon(
                Icons.home,
                color: index_color == 0
                    ? Color.fromARGB(255, 73, 168, 127)
                    : Colors.grey,
                size: 30,
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  index_color = 1;
                });
              },
              child: Icon(
                Icons.bar_chart_outlined,
                color: index_color == 1
                    ? Color.fromARGB(255, 73, 168, 127)
                    : Colors.grey,
                size: 30,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  index_color = 2;
                });
              },
              child: Icon(
                Icons.account_balance_wallet_outlined,
                color: index_color == 2
                    ? Color.fromARGB(255, 73, 168, 127)
                    : Colors.grey,
                size: 30,
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  index_color = 3;
                });
              },
              child: Icon(
                Icons.person_outline,
                color: index_color == 3
                    ? Color.fromARGB(255, 73, 168, 127)
                    : Colors.grey,
                size: 30,
              ),
            ),
          ],
        ),
      )),
    );
  }
}
