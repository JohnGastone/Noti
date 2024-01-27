// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:noti/data/listData.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    return Scaffold(
      body: SafeArea(
          child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(
              height: 350,
              child: _head(),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Transaction History',
                    style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                  Text(
                    'See All',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color.fromARGB(255, 119, 111, 111)),
                  ),
                  // ListView(
                  //   scrollDirection: Axis.vertical,
                  // )
                ], //Here we add +++
              ),
            ),
          ),
          SliverList(delegate: SliverChildBuilderDelegate(((context, index) {
            final items = geter();
            if (index < items.length) {
              return ListTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.asset('images/${geter()[index].image!}',
                        height: 40),
                  ),
                  title: Text(
                    'Wire transfer',
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
                  ),
                  subtitle: Text(
                    'Today',
                    style: TextStyle(fontWeight: FontWeight.w300, fontSize: 12),
                  ),
                  trailing: Text('Tsh 750,000/=',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 73, 168, 127),
                      )));
            } else {
              return SizedBox
                  .shrink(); // or return an empty widget if the index is out of bounds
            }
          })))
        ],
      )),
    );
  }

  Widget _head() {
    return Stack(
      children: [
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
                            color: Color.fromARGB(255, 47, 180, 35),
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
                boxShadow: [
                  BoxShadow(
                      color: Color.fromARGB(255, 73, 168, 127),
                      offset: Offset(0, 6),
                      blurRadius: 12,
                      spreadRadius: 6)
                ],
                color: Color.fromARGB(255, 78, 153, 119),
                borderRadius: BorderRadius.circular(15)),
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 18, vertical: 16),
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
                  padding:
                      const EdgeInsets.symmetric(horizontal: 18, vertical: 16),
                  child: Row(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.arrow_circle_down_sharp,
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
                            Icons.arrow_circle_up_sharp,
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
      ],
    );
  }

  List<money> geter() {
    money upwork = money();
    upwork.image = 'upwork.png';
    upwork.name = 'Upwork';
    upwork.time = 'Yesterday';
    upwork.fee = '500';
    return [upwork];
  }
}

class money {
  String? image;
  String? name;
  String? time;
  String? fee;
}
