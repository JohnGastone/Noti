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
          Column(
            children: [
              Container(
                width: double.infinity,
                height: 240,
                padding: const EdgeInsets.only(top: 5),
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 73, 168, 127),
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
                              Icons.notifications,
                              size: 30,
                              color: Color.fromARGB(255, 255, 255, 255),
                            ),
                          ))),
                  Padding(
                    padding: const EdgeInsets.only(top: 30, left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                              fontSize: 23,
                              fontWeight: FontWeight.w400,
                              color: Color.fromARGB(255, 238, 232, 232)),
                        )
                      ],
                    ),
                  )
                ]),
              ),
            ],
          ),
          Positioned(
            top: 150,
            left: 30,
            child: Container(
              height: 190,
              width: 300,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 78, 153, 119),
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 18, vertical: 16),
                    child: Row(
                      children: [
                        Text(
                          'Total Balance',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w300,
                              color: Color.fromARGB(255, 238, 232, 232)),
                        ),
                        Spacer(),
                        Icon(
                          Icons.more_horiz_sharp,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Row(
                      children: [
                        Text(
                          'Tsh 40,0000,000/=',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Color.fromARGB(255, 238, 232, 232)),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 18, vertical: 16),
                    child: Row(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.arrow_circle_up_sharp,
                              color: Colors.white,
                            ),
                            Text(
                              'Income',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w300,
                                  color: Color.fromARGB(255, 238, 232, 232)),
                            ),
                          ],
                        ),
                        Spacer(),
                        Row(
                          children: [
                            Text(
                              'Expenses',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w300,
                                  color: Color.fromARGB(255, 238, 232, 232)),
                            ),
                            Icon(
                              Icons.arrow_circle_down_sharp,
                              color: Colors.white,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Tsh 1,500,000/=',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Color.fromARGB(255, 238, 232, 232)),
                        ),
                        Text(
                          'Tsh 760,000/=',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Color.fromARGB(255, 238, 232, 232)),
                        ),
                      ],
                    ),
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.symmetric(
                  //       horizontal: 18, vertical: 16),
                  //   child: Row(
                  //     children: [
                  //       Row(
                  //         children: [
                  //           Text(
                  //             'Tsh 1,500,000/=',
                  //             style: TextStyle(
                  //                 fontSize: 15,
                  //                 fontWeight: FontWeight.w600,
                  //                 color: Color.fromARGB(255, 238, 232, 232)),
                  //           ),
                  //           Text(
                  //             'Tsh 760,000/=',
                  //             style: TextStyle(
                  //                 fontSize: 15,
                  //                 fontWeight: FontWeight.w600,
                  //                 color: Color.fromARGB(255, 238, 232, 232)),
                  //           ),

                  //         ],
                  //       ),
                  //       Spacer(),
                  //       Row(
                  //         children: [
                  //           Text(
                  //             'Tsh 760,000/=',
                  //             style: TextStyle(
                  //                 fontSize: 15,
                  //                 fontWeight: FontWeight.w600,
                  //                 color: Color.fromARGB(255, 238, 232, 232)),
                  //           ),
                  //         ],
                  //       )
                  //     ],
                  //   ),
                  // ),
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
