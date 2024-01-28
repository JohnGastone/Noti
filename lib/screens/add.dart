// ignore_for_file: prefer_const_constructors, sort_child_properties_last, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class Add_Screen extends StatefulWidget {
  const Add_Screen({super.key});

  @override
  State<Add_Screen> createState() => _Add_ScreenState();
}

class _Add_ScreenState extends State<Add_Screen> {
  String? selectedItem;
  final List<String> _item = [
    "Food",
    "Transfer",
    "Transportation",
    "Education",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
          child: Stack(
        alignment: Alignment.center,
        children: [
          background_container(context),
          Positioned(
            top: 120,
            left: 30,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
              height: 550,
              width: 300,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      width: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 2, color: Colors.grey),
                      ),
                      child: DropdownButton<String>(
                        items: _item
                            .map((e) => DropdownMenuItem(
                                  child: Container(
                                    child: Row(
                                      children: [
                                        Container(
                                          width: 40,
                                          child: Image.asset('images/&{e}.png'),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          e,
                                          style: TextStyle(fontSize: 18),
                                        )
                                      ],
                                    ),
                                  ),
                                  value: e,
                                ))
                            .toList(),
                        hint: Text(
                          "Select",
                          style: TextStyle(fontSize: 15, color: Colors.black54),
                        ),
                        dropdownColor: Colors.white,
                        isExpanded: true,
                        underline: Container(),
                        onChanged: (((value) {
                          setState(() {
                            selectedItem = value!;
                          });
                        })),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      )),
    );
  }

  Column background_container(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 240,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 73, 168, 127),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20))),
          child: Column(children: [
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(Icons.arrow_back),
                    color: Colors.white,
                  ),
                  Text(
                    'Adding',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Icon(
                    Icons.attach_file_outlined,
                    color: Colors.white,
                  )
                ],
              ),
            )
          ]),
        ),
      ],
    );
  }
}
