import 'package:flutter/material.dart';

class AppBarDemo extends StatefulWidget {
  const AppBarDemo({Key? key}) : super(key: key);

  @override
  State<AppBarDemo> createState() => _AppBarDemoState();
}

class _AppBarDemoState extends State<AppBarDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Container(
        height: double.infinity,
        width: 300,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Text("hello Drawer")),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 10,
        title: Text(
          "AppBar",
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),
        ),
        actions: [Icon(Icons.search), Icon(Icons.more_vert)],
        titleSpacing: 0,
        leadingWidth: 50,
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: Container(
            height: 50,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.values[4],
                children: [
                  Text(
                    "Chat",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Text(
                    "Status",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Text(
                    "Call",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ],
              ),
            ),
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
      ),
    );
  }
}
