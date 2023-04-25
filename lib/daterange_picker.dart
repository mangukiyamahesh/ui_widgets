import 'package:flutter/material.dart';

class DateRangeDemo extends StatefulWidget {
  const DateRangeDemo({Key? key}) : super(key: key);

  @override
  State<DateRangeDemo> createState() => _DateRangeDemoState();
}

class _DateRangeDemoState extends State<DateRangeDemo> {
  var data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: MaterialButton(
              height: 50,
              minWidth: 300,
              child: Text(
                "Press",
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.indigo,
              onPressed: () {
                setState(
                  () {
                    showDateRangePicker(
                            context: context,
                            initialEntryMode: DatePickerEntryMode.calendar,
                            firstDate: DateTime(2020),
                            lastDate: DateTime(2030))
                        .then(
                      (value) {
                        setState(() {
                          print('abc ${value!.duration.inDays}');
                          data = '${value!.duration.inDays}';
                          return data;
                        });
                      },
                    );
                  },
                );
              },
            ),
          ),
          Text(
            "$data",
            style: TextStyle(color: Colors.black),
          ),
        ],
      ),
    );
  }
}
