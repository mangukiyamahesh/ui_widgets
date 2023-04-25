import 'dart:async';

import 'package:flutter/material.dart';

class StreamEx1 extends StatelessWidget {
  StreamEx1({Key? key}) : super(key: key);

  StreamController<List<String>> counter = StreamController();

  List<String> addlist = [];

  TextEditingController namecntr = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: namecntr,
              decoration: InputDecoration(
                hintText: "name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(height: 30),
            MaterialButton(
              color: Colors.indigo,
              height: 50,
              minWidth: 300,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                "Add",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                addlist.add(namecntr.text);
                counter.sink.add(addlist);
                // namecntr.clear();
              },
            ),
            StreamBuilder<List<String>>(
              stream: counter.stream,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                    shrinkWrap: true,
                    itemCount: addlist.length,
                    itemBuilder: (context, index) {
                      return Text("${snapshot.data![index]}");
                    },
                  );
                } else {
                  return Text("no data");
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
