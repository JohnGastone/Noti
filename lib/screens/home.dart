// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SingleChildScrollView(
            child: Container(
              // height: 700,
              padding: const EdgeInsets.only(top: 15, bottom: 15),
              decoration: const BoxDecoration(
                  color: Color(0xFFEDECF2),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35),
                      topRight: Radius.circular(35))),
              child: Column(
                children: [
                  Container(
                      margin:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                      padding: EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Color(0xFF4C53A5),
                                borderRadius: BorderRadius.circular(20)),
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              'Add A Gift Card',
                              style: TextStyle(
                                  color: Color(0xFF4C53A5),
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
