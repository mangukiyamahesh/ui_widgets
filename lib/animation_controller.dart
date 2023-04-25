import 'package:flutter/material.dart';

class AnimationControllerDemo extends StatefulWidget {
  const AnimationControllerDemo({Key? key}) : super(key: key);

  @override
  State<AnimationControllerDemo> createState() =>
      _AnimationControllerDemoState();
}

class _AnimationControllerDemoState extends State<AnimationControllerDemo>
    with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  @override
  void initState() {
    _controller =
        AnimationController(duration: Duration(seconds: 3), vsync: this)
          ..forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        if (_controller!.isAnimating) {
          _controller!.stop();
        } else if (_controller!.isCompleted) {
          _controller!.reverse();
        } else {
          _controller!.forward();
        }
        setState(() {});
      }),
      body: Center(
        child: AnimatedBuilder(
          animation: _controller!,
          builder: (context, child) => Container(
            height: _controller!.value * 100,
            width: _controller!.value * 100,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
