import 'package:flutter/material.dart';

class SnackBarDemo extends StatefulWidget {
  const SnackBarDemo({Key? key}) : super(key: key);

  @override
  State<SnackBarDemo> createState() => _SnackBarDemoState();
}

class _SnackBarDemoState extends State<SnackBarDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: MaterialButton(
              color: Colors.teal,
              onPressed: () {
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text('Hi Mahesh')));
              },
              child: Text('Hi'),
            ),
          )
        ],
      ),
    );
  }
}
