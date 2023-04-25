import 'package:flutter/material.dart';

class DemoTimePicker extends StatefulWidget {
  const DemoTimePicker({Key? key}) : super(key: key);

  @override
  State<DemoTimePicker> createState() => _DemoTimePickerState();
}

class _DemoTimePickerState extends State<DemoTimePicker> {
  String? time;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {});
          showTimePicker(
            context: context,
            initialTime: TimeOfDay(hour: 00, minute: 00),
          ).then(
            (value) {
              print("${value!.format(context)}");
              time = value!.format(context);
              setState(() {});
            },
          );
        },
      ),
      body: Center(
        child: Text('${time}'),
      ),
    );
  }
}
