import 'package:flutter/material.dart';

class DemoTable extends StatefulWidget {
  const DemoTable({Key? key}) : super(key: key);

  @override
  State<DemoTable> createState() => _DemoTableState();
}

class _DemoTableState extends State<DemoTable> {
  List<Map<String, dynamic>> data = [
    {'no': 1, 'name': 'nevil', 'gender': 'male', 'age': 20, 'nom': 1},
    {'no': 2, 'name': 'jenis', 'gender': 'male', 'age': 21, 'nom': 2},
    {'no': 3, 'name': 'mahesh', 'gender': 'male', 'age': 22, 'nom': 3},
    {'no': 4, 'name': 'vraj', 'gender': 'male', 'age': 23, 'nom': 4},
    {'no': 5, 'name': 'kautuk', 'gender': 'male', 'age': 24, 'nom': 5},
    {'no': 6, 'name': 'lalit', 'gender': 'male', 'age': 25, 'nom': 6},
    {'no': 7, 'name': 'yogi', 'gender': 'male', 'age': 26, 'nom': 7},
    {'no': 8, 'name': 'bharat', 'gender': 'male', 'age': 27, 'nom': 8},
    {'no': 9, 'name': 'kalu', 'gender': 'male', 'age': 28, 'nom': 9},
    {'no': 10, 'name': 'bhopu', 'gender': 'male', 'age': 29, 'nom': 10},
    {'no': 11, 'name': 'harshil', 'gender': 'male', 'age': 30, 'nom': 11},
    {'no': 12, 'name': 'nevil', 'gender': 'male', 'age': 20, 'nom': 12},
    {'no': 13, 'name': 'jenis', 'gender': 'male', 'age': 21, 'nom': 13},
    {'no': 14, 'name': 'mahesh', 'gender': 'male', 'age': 22, 'nom': 14},
    {'no': 15, 'name': 'vraj', 'gender': 'male', 'age': 23, 'nom': 15},
    {'no': 16, 'name': 'kautuk', 'gender': 'male', 'age': 24, 'nom': 16},
    {'no': 17, 'name': 'lalit', 'gender': 'male', 'age': 25, 'nom': 17},
    {'no': 18, 'name': 'yogi', 'gender': 'male', 'age': 26, 'nom': 18},
    {'no': 19, 'name': 'bharat', 'gender': 'male', 'age': 27, 'nom': 19},
    {'no': 20, 'name': 'kalu', 'gender': 'male', 'age': 28, 'nom': 20},
    {'no': 21, 'name': 'bhopu', 'gender': 'male', 'age': 29, 'nom': 21},
    {'no': 22, 'name': 'harshil', 'gender': 'male', 'age': 30, 'nom': 22},
  ];

  // List<DataRow> _rows() {
  //   var keyss = data.first.keys.toList();
  //   return List.generate(
  //     data.length,
  //     (index) => DataRow(
  //       cells: List.generate(
  //         keyss.length,
  //         (index1) => DataCell(
  //           Text('${data[index]['${keyss[index1]}']}'),
  //         ),
  //       ),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    var columnLength = data[0].keys.toList();
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: DataTable(
              showCheckboxColumn: true,
              checkboxHorizontalMargin: 10,
              decoration: BoxDecoration(),
              // dataRowColor:
              //     MaterialStateColor.resolveWith((states) => Colors.blue),
              dividerThickness: 1,
              showBottomBorder: true,
              onSelectAll: (value) {
                print('SELECTED ${value}');
              },
              rows: List.generate(
                data.length,
                (index) => DataRow(
                  cells: List.generate(
                    columnLength.length,
                    (index1) => DataCell(
                        Text("${data[index]["${columnLength[index1]}"]}")),
                  ),
                ),
              ),
              columns: List.generate(
                columnLength.length,
                (index) => DataColumn(
                  label: Text('${columnLength[index]}'),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
