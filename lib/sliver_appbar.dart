import 'package:flutter/material.dart';

class SliverAppBarDemo extends StatefulWidget {
  const SliverAppBarDemo({Key? key}) : super(key: key);

  @override
  State<SliverAppBarDemo> createState() => _SliverAppBarDemoState();
}

class _SliverAppBarDemoState extends State<SliverAppBarDemo> {
  List item = [
    "A",
    "B",
    "C",
    "D",
    "E",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              leading: Icon(Icons.menu),
              expandedHeight: 300,
              pinned: true,
              floating: false,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  "assets/images/Fruit-Salad-7.jpg",
                  fit: BoxFit.cover,
                ),
                title: Text("Sliver App Bar"),
                collapseMode: CollapseMode.none,
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                height: 1800,
                width: 360,
                color: Colors.purple,
                margin: EdgeInsets.symmetric(vertical: 20),
                child: Column(children: [
                  Container(
                    color: Colors.red,
                    height: 200,
                  )
                ]),
              ),
            ),
            // SliverToBoxAdapter(
            //   child: Center(
            //     child: Container(
            //       height: 300,
            //       width: 300,
            //       margin: EdgeInsets.symmetric(vertical: 20),
            //       color: Colors.purpleAccent,
            //     ),
            //   ),
            // ),
            // SliverToBoxAdapter(
            //   child: Center(
            //     child: Container(
            //       height: 300,
            //       width: 300,
            //       margin: EdgeInsets.symmetric(vertical: 20),
            //       color: Colors.orange,
            //     ),
            //   ),
            // ),
            // SliverAppBar(
            //     leading: Icon(Icons.menu),
            //     title: Text("Sliver App Bar"),
            //     expandedHeight: 300,
            //     // flexibleSpace: FlexibleSpaceBar(
            //     //   background: Image.asset("assets/images/Fruit-Salad-7.jpg",
            //     //       fit: BoxFit.cover),
            //     // ),
            //     toolbarHeight: 100,
            //     backgroundColor: Colors.red,
            //     pinned: true,
            //     snap: true,
            //     floating: true),
            // SliverFillRemaining(
            //   child: Container(color: Colors.green),
            // )
          ],
        ),
      ),
    );
  }
}
