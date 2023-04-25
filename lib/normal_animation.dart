import 'package:flutter/material.dart';

class Set2Page extends StatefulWidget {
  const Set2Page({Key? key}) : super(key: key);

  @override
  State<Set2Page> createState() => _Set2PageState();
}

class _Set2PageState extends State<Set2Page> {
  Color selected = Colors.redAccent;
  Color bordercolor = Colors.black;
  double size = 100;
  double endvalue = 100;
  double redius = 20;
  double fontsize = 28;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Center(
      //   child: TweenAnimationBuilder(
      //     tween: SizeTween(
      //       begin: Size.fromHeight(50),
      //       end: Size.fromWidth(endvalue),
      //     ),
      //     duration: const Duration(milliseconds: 500),
      //     onEnd: () {
      //       if (endvalue == 100) {
      //         setState(() {
      //           endvalue = 150;
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
      //         child: Icon(
      //           Icons.favorite,
      //           size: endvalue,
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
      //           setState(
      //             () {
      //               selected = selected == Colors.black87
      //                   ? Colors.indigo
      //                   : Colors.black87;
      //               bordercolor = bordercolor == Colors.indigo
      //                   ? Colors.black
      //                   : Colors.indigo;
      //               size = size == 100 ? 200 : 100;
      //             },
      //           );
      //         },
      //         child: Container(
      //           height: size,
      //           width: size,
      //           decoration: BoxDecoration(
      //               color: selected,
      //               border: Border.all(color: bordercolor, width: 3)),
      //         ),
      //       );
      //     },
      //     tween: BorderTween(
      //       begin: Border.all(color: Colors.black, width: 3),
      //       end: Border.all(color: bordercolor, width: 3),
      //     ),
      //   ),
      // ),
      // body: Center(
      //   child: TweenAnimationBuilder(
      //     onEnd: () {
      //       if (redius == 20) {
      //         setState(() {});
      //         redius = 50;
      //       } else {
      //         setState(() {});
      //         redius = 20;
      //       }
      //     },
      //     tween: BorderRadiusTween(
      //       begin: BorderRadius.circular(15),
      //       end: BorderRadius.circular(redius),
      //     ),
      //     duration: Duration(milliseconds: 200),
      //     builder: (BuildContext context, size, child) {
      //       return MaterialButton(
      //         onPressed: () {
      //           // setState(
      //           //   () {
      //           //     redius = redius == 20 ? 50 : 20;
      //           //   },
      //           // );
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

      body: Center(
        child: TweenAnimationBuilder(
          onEnd: () {
            if (selected == Colors.blue) {
              setState(
                () {
                  selected = Colors.orange;
                },
              );
            } else {
              setState(
                () {
                  selected = Colors.blue;
                },
              );
            }
          },
          tween: TextStyleTween(
            begin: TextStyle(
                color: Colors.indigo,
                fontSize: 20,
                fontWeight: FontWeight.bold),
            end: TextStyle(
                color: selected,
                fontSize: fontsize,
                fontWeight: FontWeight.bold),
          ),
          builder: (BuildContext context, value, child) {
            return TextButton(
              onPressed: () {
                if (fontsize == 20) {
                  fontsize = 25;
                } else {
                  fontsize = 20;
                }
              },
              child: Text(
                'Hello',
                style: TextStyle(
                  fontSize: fontsize,
                  color: selected,
                ),
              ),
            );
          },
          duration: Duration(seconds: 1),
        ),
      ),
    );
  }
}
