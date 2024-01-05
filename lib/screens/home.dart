// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

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
                color: Color.fromARGB(255, 118, 205, 167),
                borderRadius: BorderRadius.only(
                    // topLeft: Radius.circular(35),
                    // topRight: Radius.circular(35),
                    bottomLeft: Radius.circular(35),
                    bottomRight: Radius.circular(35))),
            child: Stack(children: [
              Positioned(
                  top: 25,
                  left: 305,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(7),
                      child: Container(
                        height: 40,
                        width: 40,
                        color: Color.fromARGB(255, 156, 236, 200),
                        child: Icon(
                          Icons.notification_add_outlined,
                          size: 30,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ))),
              Column(
                children: [
                  Text(
                    'Good afternoon',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                        color: Colors.white),
                  ),
                  Text(
                    'Mshua Masta',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Color.fromARGB(255, 238, 232, 232)),
                  )
                ],
              )
            ]),
          ),
        ]),
      ),
    );
  }
}
