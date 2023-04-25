import 'package:flutter/material.dart';

class StreamEx2 extends StatelessWidget {
  const StreamEx2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DragbleScrollable"),
      ),
      body: DraggableScrollableSheet(
        initialChildSize: 0.6,
        maxChildSize: 1,
        minChildSize: 0.1,
        snap: true,
        snapSizes: [0.5, 0.6],
        builder: (context, ScrollController scrollController) {
          return Container(
            height: 300,
            color: Colors.blue.shade100,
            child: ListView.builder(
              controller: scrollController,
              itemCount: 20,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    ListTile(
                      title: Text("Item ${index}"),
                    ),
                  ],
                );
              },
            ),
          );
        },
      ),
    );
  }
}
