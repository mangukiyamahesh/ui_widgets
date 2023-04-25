import 'package:flutter/material.dart';

class ListWheelScrollViewDemo extends StatefulWidget {
  const ListWheelScrollViewDemo({Key? key}) : super(key: key);

  @override
  State<ListWheelScrollViewDemo> createState() =>
      _ListWheelScrollViewDemoState();
}

class _ListWheelScrollViewDemoState extends State<ListWheelScrollViewDemo> {
  List name = [
    "Mahesh",
    "Amit",
    "Ashish",
    "Hardik",
    "Mohit",
    "Ansh",
    "Tushar",
    "Jay",
    "Harshil",
    "Vraj",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ListWheelScrollView(
            itemExtent: 100,
            diameterRatio: 0.8,
            // offAxisFraction: 0,
            overAndUnderCenterOpacity: 0.2,
            // clipBehavior: Clip.none,
            squeeze: 3, perspective: 0.01,
            children: List.generate(
              name.length,
              (index) => Text(
                name[index],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
