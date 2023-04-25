import 'package:flutter/material.dart';

class SwipeDismissDemo extends StatefulWidget {
  const SwipeDismissDemo({Key? key}) : super(key: key);

  @override
  State<SwipeDismissDemo> createState() => _SwipeDismissDemoState();
}

class _SwipeDismissDemoState extends State<SwipeDismissDemo> {
  List item = [
    "Mahesh",
    "Amit",
    "Ashish",
    "Hardik",
    "Mohit",
    "Tushar",
    "UI",
    "Jay",
  ];

  double sigmax = 0;
  double sigmay = 0;
  double rotation = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: List.generate(
            item.length,
            (index) => Dismissible(
              key: UniqueKey(),
              background: Container(color: Colors.green),
              secondaryBackground: Container(color: Colors.red),
              // crossAxisEndOffset: 2,
              child: Container(
                height: 50,
                width: 300,
                child: Center(
                  child: Text(
                    item[index],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
