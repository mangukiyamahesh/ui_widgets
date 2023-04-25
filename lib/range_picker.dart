import 'package:flutter/material.dart';

class DemoPicker extends StatefulWidget {
  const DemoPicker({Key? key}) : super(key: key);

  @override
  State<DemoPicker> createState() => _DemoPickerState();
}

class _DemoPickerState extends State<DemoPicker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDateRangePicker(
                  context: context,
                  errorFormatText: 'ERROR',
                  cancelText: 'CLOSE',
                  saveText: 'DONE',
                  initialEntryMode: DatePickerEntryMode.input,
                  anchorPoint: const Offset(200, 200),
                  firstDate: DateTime(2020),
                  lastDate: DateTime(2025))
              .then((value) {
            print('LALIT ${value!.duration}');
          });
        },
      ),
      body: Column(),
    );
  }
}
