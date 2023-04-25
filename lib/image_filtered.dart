import 'dart:ui';

import 'package:flutter/material.dart';

class ImageFileteredDemo extends StatefulWidget {
  const ImageFileteredDemo({Key? key}) : super(key: key);

  @override
  State<ImageFileteredDemo> createState() => _ImageFileteredDemoState();
}

class _ImageFileteredDemoState extends State<ImageFileteredDemo>
    with SingleTickerProviderStateMixin {
  TabController? _controller;

  @override
  void initState() {
    _controller = TabController(length: 3, vsync: this);

    super.initState();
  }

  double simaX = 0.0;
  double simay = 0.0;
  double rotation = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 300,
            width: 300,
            child: ImageFiltered(
              imageFilter: ImageFilter.blur(sigmaX: simaX, sigmaY: simay),
              child: Image.network(
                'https://images.unsplash.com/photo-1673117921063-5dde75f25a81?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw1N3x8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          ImageFiltered(
            imageFilter: ImageFilter.matrix(Matrix4.skewY(rotation).storage),
            child: Text(
                'vkjhgkjhkfhkjfghdkjhdgkjdhfkjhdskjfhdskjfhdsvbcxmsahfnmkbddhsafbkjdsdbvbvdshjdhdkgjklbl'),
          ),
          SizedBox(
            height: 20,
          ),
          Slider(
            max: 20,
            value: simaX,
            onChanged: (value) {
              setState(() {
                simaX = value;
              });
            },
          ),
          Text(
            simaX.toStringAsFixed(0),
          ),
          SizedBox(
            height: 20,
          ),
          Slider(
            max: 20,
            value: simay,
            onChanged: (value) {
              setState(() {
                simay = value;
              });
            },
          ),
          Text(
            simay.toStringAsFixed(0),
          ),
          SizedBox(
            height: 20,
          ),
          Slider(
            max: 1.6,
            min: -1.6,
            value: rotation,
            onChanged: (value) {
              setState(() {
                rotation = value;
              });
            },
          ),
          Text(
            rotation.toStringAsFixed(1),
          ),
        ],
      ),
    );
  }
}
