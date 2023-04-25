import 'package:flutter/material.dart';

class ExpansionTileDemo extends StatefulWidget {
  const ExpansionTileDemo({Key? key}) : super(key: key);

  @override
  State<ExpansionTileDemo> createState() => _ExpansionTileDemoState();
}

class _ExpansionTileDemoState extends State<ExpansionTileDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Center(
          //   child: Container(
          //     height: 200,
          //     width: 200,
          //     decoration: const BoxDecoration(
          //       shape: BoxShape.circle,
          //       boxShadow: [
          //         BoxShadow(color: Colors.yellow),
          //         BoxShadow(
          //           color: Colors.black,
          //           blurRadius: 10,
          //           spreadRadius: -12.0,
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
          SizedBox(height: 300),
          ExpansionTile(
            title: Text("Open File"),
            expandedCrossAxisAlignment: CrossAxisAlignment.start,
            leading: Icon(Icons.file_copy_outlined),
            childrenPadding: EdgeInsets.symmetric(horizontal: 10),
            initiallyExpanded: true,
            tilePadding: EdgeInsets.zero,
            expandedAlignment: Alignment.centerLeft,
            textColor: Colors.black,
            children: [
              Text("File 1"),
              Text("File 2"),
              Text("File 3"),
              Text("File 4"),
              Text("File 5"),
            ],
          ),
        ],
      ),
    );
  }
}
