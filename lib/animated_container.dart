import 'package:flutter/material.dart';

class Set2Page extends StatefulWidget {
  const Set2Page({Key? key}) : super(key: key);

  @override
  State<Set2Page> createState() => _Set2PageState();
}

class _Set2PageState extends State<Set2Page> {
  Color selected = Colors.redAccent;
  double size = 4;
  double endvalue = 100;
  double redius = 20;
  double fontsize = 28;

  double width = 200;
  double height = 200;
  double turn = 5;
  Curve curve = Curves.bounceIn;
  Alignment alignment = Alignment.topCenter;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Center(
      //   child: TweenAnimationBuilder(
      //     tween: SizeTween(
      //       begin: Size.fromHeight(50),
      //       end: Size.fromWidth(endvalue),
      //     ),
      //     duration: const Duration(seconds: 1),
      //     onEnd: () {
      //       if (endvalue == 100) {
      //         setState(() {
      //           endvalue = 200;
      //         });
      //       } else {
      //         setState(() {
      //           endvalue = 100;
      //         });
      //       }
      //     },
      //     builder: (context, value, child) {
      //       return MaterialButton(
      //         onPressed: () {
      //           setState(() {
      //             endvalue = endvalue == 100 ? 200 : 100;
      //           });
      //         },
      //         child: Container(
      //           height: endvalue,
      //           width: endvalue,
      //           color: Colors.red,
      //         ),
      //       );
      //     },
      //   ),
      // ),
      // body: Center(
      //   child: TweenAnimationBuilder(
      //     duration: Duration(seconds: 1),
      //     builder: (context, value, child) {
      //       return MaterialButton(
      //         onPressed: () {
      //           setState(() {
      //             selected = selected == Colors.black87
      //                 ? Colors.indigo
      //                 : Colors.black87;
      //             size = size == 4 ? 7 : 4;
      //           });
      //         },
      //         child: Container(
      //           height: 80,
      //           width: 200,
      //           decoration: BoxDecoration(
      //               border: Border.all(color: selected, width: size)),
      //         ),
      //       );
      //     },
      //     tween: BorderTween(
      //       begin: Border.all(color: Colors.black87, width: 1),
      //       end: Border.all(color: selected, width: size),
      //     ),
      //   ),
      // ),
      // body: Center(
      //   child: TweenAnimationBuilder(
      //     tween: BorderRadiusTween(
      //       begin: BorderRadius.circular(15),
      //       end: BorderRadius.circular(redius),
      //     ),
      //     duration: Duration(seconds: 1),
      //     builder: (BuildContext context, size, child) {
      //       return MaterialButton(
      //         onPressed: () {
      //           setState(() {
      //             redius = redius == 15 ? 25 : 15;
      //           });
      //         },
      //         child: Container(
      //           height: 80,
      //           width: 150,
      //           decoration: BoxDecoration(
      //             color: Colors.blue,
      //             borderRadius: BorderRadius.circular(redius),
      //           ),
      //         ),
      //       );
      //     },
      //   ),
      // ),
      // body: Center(
      //   child: TweenAnimationBuilder(
      //     onEnd: () {
      //       if (selected == Colors.blue && fontsize == 20) {
      //         setState(() {
      //           selected = Colors.green;
      //           fontsize = 30;
      //         });
      //       } else {
      //         setState(() {
      //           selected = Colors.blue;
      //           fontsize = 20;
      //         });
      //       }
      //     },
      //     tween: TextStyleTween(
      //       begin: TextStyle(
      //           color: Colors.indigo,
      //           fontSize: 20,
      //           fontWeight: FontWeight.bold),
      //       end: TextStyle(
      //           color: selected,
      //           fontSize: fontsize,
      //           fontWeight: FontWeight.bold),
      //     ),
      //     builder: (BuildContext context, value, child) {
      //       return TextButton(
      //         onPressed: () {
      //           // if (fontsize == 20) {
      //           //   fontsize = 25;
      //           // } else {
      //           //   fontsize = 20;
      //           // }
      //         },
      //         child: Text(
      //           'Hello',
      //           style: TextStyle(
      //             fontSize: fontsize,
      //             color: selected,
      //           ),
      //         ),
      //       );
      //     },
      //     duration: Duration(milliseconds: 1000),
      //   ),
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(
            () {
              turn = turn == 5 ? 20 : 5;
              alignment = alignment == Alignment.topCenter
                  ? Alignment.bottomCenter
                  : Alignment.topCenter;
              curve = curve == Curves.bounceInOut
                  ? Curves.slowMiddle
                  : Curves.bounceInOut;
            },
          );
        },
      ),
      body: Center(
        child: AnimatedAlign(
          alignment: alignment,
          duration: Duration(seconds: 2),
          child: AnimatedRotation(
            duration: Duration(seconds: 2),
            curve: curve,
            turns: turn,
            child: Container(
              height: 100,
              width: 100,
              color: Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}
