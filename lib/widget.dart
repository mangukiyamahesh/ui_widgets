import 'package:flutter/material.dart';

class DemoWidget extends StatefulWidget {
  const DemoWidget({Key? key}) : super(key: key);

  @override
  State<DemoWidget> createState() => _DemoWidgetState();
}

class _DemoWidgetState extends State<DemoWidget> {
  @override
  Scaffold build(BuildContext context) {
    return Scaffold(
      body: Builder(
        builder: (context) {
          return Center(
            child: FlutterLogo(
              size: 200,
              style: FlutterLogoStyle.horizontal,
              curve: Curves.bounceInOut,
              duration: Duration(seconds: 5),
              textColor: Colors.red,
            ),
          );
        },
      ),

      // Center(
      //   child: MaterialButton(
      //     height: 50,
      //     minWidth: 300,
      //     color: Colors.red,
      //     child: Text(
      //       "press",
      //       style: TextStyle(
      //         fontSize: 20,
      //         color: Colors.white,
      //       ),
      //     ),
      //     onPressed: () {
      //       setState(
      //             () {},
      //       );
      //     },
      //   ),
      // )
      // Column(
      //   children: [
      //     Center(
      //       child: Placeholder(
      //         color: Colors.red,
      //         child: Container(
      //           height: 50,
      //           width: 100,
      //           child: Center(child: Text("hello Flutter")),
      //         ),
      //       ),
      //     ),

      //     AspectRatio(
      //       aspectRatio: 100 / 50,
      //       child: Container(
      //         color: Colors.green,
      //       ),
      //     ),
      //     ConstrainedBox(
      //       constraints: BoxConstraints(
      //         maxHeight: 400,
      //         maxWidth: 300,
      //         minHeight: 100,
      //         minWidth: 100,
      //       ),
      //       child: Container(
      //         height: 400,
      //         width: 200,
      //         color: Colors.red,
      //       ),
      //     ),
      //     Wrap(
      //       children: List.generate(
      //         20,
      //         (index) => Container(
      //           height: index * 10,
      //           width: index * 10,
      //           margin: EdgeInsets.all(10),
      //           color: Colors.red,
      //         ),
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
