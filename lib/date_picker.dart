import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DatePicker extends StatefulWidget {
  const DatePicker({Key? key}) : super(key: key);

  @override
  State<DatePicker> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  DateTime intialDate = DateTime.now();

  DateTime currentDate = DateTime.now();

  DateFormat formate = DateFormat('dd / MM / yyyy : hh:mm:ss');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {});
        showDatePicker(
          context: context,
          initialDate: intialDate,
          firstDate: DateTime(1900),
          lastDate: DateTime(2100),
        ).then((value) {
          setState(() {
            currentDate = value!;
          });
        });
      }),
      body: Center(
        child: Text('${formate.format(currentDate)}'),
      ),
    );
  }
}
