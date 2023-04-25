import 'package:flutter/material.dart';

class Demo1 extends StatefulWidget {
  const Demo1({Key? key}) : super(key: key);

  @override
  State<Demo1> createState() => _Demo1State();
}

class _Demo1State extends State<Demo1> {
  List data = [
    "A",
    "B",
    "C",
    "D",
    "E",
    "F",
    "G",
    "H",
  ];
  bool ischeck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            setState(() {
              showModalBottomSheet(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                ),
                context: context,
                builder: (context) {
                  return StatefulBuilder(
                    builder: (context, setState) {
                      return Column(
                        children: [
                          SizedBox(height: 30),
                          Text(
                            "Filter",
                            style: TextStyle(
                                color: Colors.pink.withOpacity(0.8),
                                fontSize: 20),
                          ),
                          SizedBox(height: 30),
                          Expanded(
                            child: GridView.builder(
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2, childAspectRatio: 4),
                              itemCount: 8,
                              itemBuilder: (BuildContext context, int index) {
                                return Container(
                                  height: 100,
                                  padding:
                                      EdgeInsets.only(left: 20.0, right: 20.0),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Check(),
                                          Text("${data[index]}"),
                                        ],
                                      )
                                    ],
                                  ),
                                );
                              },
                            ),
                          )
                        ],
                      );
                    },
                  );
                },
              );
            });
          },
          child: Text("Press"),
        ),
      ),
    );
  }
}

class Check extends StatefulWidget {
  const Check({Key? key}) : super(key: key);

  @override
  State<Check> createState() => _CheckState();
}

class _CheckState extends State<Check> {
  bool ischeck = false;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: ischeck,
      onChanged: (value) {
        setState(() {
          ischeck = !ischeck;
        });
      },
    );
  }
}
