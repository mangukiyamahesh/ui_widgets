import 'package:flutter/material.dart';

class ReodarableListDemo extends StatefulWidget {
  const ReodarableListDemo({Key? key}) : super(key: key);

  @override
  State<ReodarableListDemo> createState() => _ReodarableListDemoState();
}

class _ReodarableListDemoState extends State<ReodarableListDemo> {
  List item = [
    "A",
    "B",
    "C",
    "D",
    "E",
    "A",
    "B",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ReorderableListView.builder(
          itemBuilder: (context, index) => Center(
            key: UniqueKey(),
            child: Center(
              child: Text(
                '${item[index]}',
              ),
            ),
          ),
          itemCount: item.length,
          onReorder: (oldIndex, newIndex) {
            if (oldIndex < newIndex) {
              newIndex -= 1;
            }

            String oldtiem = item.removeAt(oldIndex);
            item.insert(newIndex, oldtiem);
            setState(() {});
          },
        ),
      ),
    );
  }
}
