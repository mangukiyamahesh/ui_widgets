import 'package:flutter/material.dart';

class CardDemo extends StatefulWidget {
  const CardDemo({Key? key}) : super(key: key);

  @override
  State<CardDemo> createState() => _CardDemoState();
}

class _CardDemoState extends State<CardDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Card(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              color: Colors.red,
              child: SizedBox(
                height: 50,
                width: 50,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
