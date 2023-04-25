import 'dart:async';

import 'package:flutter/material.dart';

class StreamDemo extends StatelessWidget {
  StreamDemo({Key? key}) : super(key: key);

  StreamController<int> counter = StreamController();
  int data = 12;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          data++;
          counter.sink.add(data);
        },
      ),
      body: StreamBuilder(
        stream: counter.stream,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Center(
              child: Text('${snapshot.data}'),
            );
          } else {
            return Center(
              child: Text('No Data'),
            );
          }
        },
      ),
    );
  }
}
