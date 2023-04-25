import 'dart:async';

import 'package:flutter/material.dart';

class TimerDemo extends StatefulWidget {
  const TimerDemo({Key? key}) : super(key: key);

  @override
  State<TimerDemo> createState() => _TimerDemoState();
}

class _TimerDemoState extends State<TimerDemo> {
  @override
  bool enable = false;
  int second = 5;
  bool isVisible = true;

  void timerDemo() {
    Timer timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        enable = true;
        isVisible = false;
      });

      second--;
      if (second == 0) {
        enable = false;
        setState(() {});
        timer.cancel();
      }
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Visibility(
              visible: isVisible,
              child: ElevatedButton(
                onPressed: () {
                  timerDemo();
                },
                child: Text('Send OTP'),
              ),
            ),
          ),
          Visibility(visible: enable, child: Text('send again in $second')),
          Visibility(
            visible: !enable,
            child: ElevatedButton(
              onPressed: () {
                timerDemo();
                second = 5;
                setState(() {});
              },
              child: Text('RESEND'),
            ),
          ),
        ],
      ),
    );
  }
}
