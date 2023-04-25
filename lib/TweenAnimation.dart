import 'package:flutter/material.dart';

class TweenAnimationBuilderDemo extends StatefulWidget {
  const TweenAnimationBuilderDemo({Key? key}) : super(key: key);

  @override
  State<TweenAnimationBuilderDemo> createState() =>
      _TweenAnimationBuilderDemoState();
}

class _TweenAnimationBuilderDemoState extends State<TweenAnimationBuilderDemo> {
  BorderRadius target = BorderRadius.circular(50);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          target = BorderRadius.circular(100);
          setState(() {});
        },
      ),
      body: Center(
        child: TweenAnimationBuilder(
          onEnd: () {
            if (target == BorderRadius.circular(50)) {
              target = BorderRadius.circular(10);
            } else {
              target = BorderRadius.circular(50);
            }

            setState(() {});
          },
          curve: Curves.bounceOut,
          tween:
              BorderRadiusTween(begin: BorderRadius.circular(10), end: target),
          duration: Duration(milliseconds: 5),
          builder: (context, value, child) => Container(
              height: 200,
              width: 200,
              decoration:
                  BoxDecoration(color: Colors.blue, borderRadius: value)),
        ),
      ),
    );
  }
}
