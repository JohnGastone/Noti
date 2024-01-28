// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:noti/widgets/chart.dart';

class Statistics extends StatefulWidget {
  const Statistics({Key? key}) : super(key: key);

  @override
  State<Statistics> createState() => _StatisticsState();
}

class _StatisticsState extends State<Statistics> {
  List day = ['Day', 'Week', 'Month', 'Year'];
  int index_color = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Text('Statistics',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700)),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ...List.generate(4, (index) {
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                index_color = index;
                              });
                            },
                            child: Container(
                              height: 40,
                              width: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: index_color == index
                                    ? Color.fromARGB(255, 73, 168, 127)
                                    : Colors.white,
                              ),
                              alignment: Alignment.center,
                              child: Text(day[index],
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w400,
                                    color: index_color == index
                                        ? Colors.white
                                        : Colors.black,
                                  )),
                            ),
                          );
                        })
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: 120,
                          height: 40,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey, width: 2),
                              borderRadius: BorderRadius.circular(8)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Expense',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                              ),
                              Icon(
                                Icons.arrow_downward_sharp,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Chart(),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Top Spending',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w700),
                        ),
                        Icon(
                          Icons.swap_vert,
                          size: 25,
                          color: Colors.grey,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SliverList(
                delegate: SliverChildBuilderDelegate(
              (context, index) {
                List<money> moneyList = geter();
                if (index < moneyList.length) {
                  money item = moneyList[index];
                  return ListTile(
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.asset(
                        'images/${item.image}',
                        height: 100,
                        width: 80,
                      ),
                    ),
                    title: Text(
                      item.name!,
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
                    ),
                    subtitle: Text(
                      item.time!,
                      style:
                          TextStyle(fontWeight: FontWeight.w300, fontSize: 12),
                    ),
                    trailing: Text(item.fee!,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 73, 168, 127),
                        )),
                  );
                }
                return null;
              },
              childCount:
                  geter().length, // Ensure we don't exceed the list's length
            ))
            // SliverList(delegate: SliverChildBuilderDelegate(((context, index) {
            //   return ListTile(
            //     leading: Image.asset('images/'),
            //   );
            // })))
          ],
        ),
      ),
    );
  }
}

List<money> geter() {
  money Upwork = money();
  Upwork.image = 'upwork.png';
  Upwork.name = 'Upwork fee';
  Upwork.time = 'Yesterday';
  Upwork.fee = '15,000';
  money Fare = money();
  Fare.image = 'coin.png';
  Fare.name = 'Fare';
  Fare.time = 'Yesterday';
  Fare.fee = '100,000';
  money Internet = money();
  Internet.image = 'upwork.png';
  Internet.name = 'Internet';
  Internet.time = '12th January';
  Internet.fee = '75,000';
  money Vegertables = money();
  Vegertables.image = '3.jpeg';
  Vegertables.name = 'Vegetables';
  Vegertables.time = '12th January';
  Vegertables.fee = '6,000';
  money Vacation = money();
  Vacation.image = '6.jpeg';
  Vacation.name = 'Vacation';
  Vacation.time = '12th January';
  Vacation.fee = '1,500,000';
  money rent = money();
  rent.image = '1.jpeg';
  rent.name = 'House Rent';
  rent.time = '30th December';
  rent.fee = '1,000,000';
  return [
    Vacation,
    rent,
    Fare,
    Internet,
    Upwork,
    Vegertables,
  ];
}

class money {
  String? image;
  String? name;
  String? time;
  String? fee;
}
