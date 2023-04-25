import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiPostDemo extends StatefulWidget {
  const ApiPostDemo({Key? key}) : super(key: key);

  @override
  State<ApiPostDemo> createState() => _ApiPostDemoState();
}

class _ApiPostDemoState extends State<ApiPostDemo> {
  Future<void> sendData(String title, String body) async {
    var data;
    Map<String, dynamic> body = {
      "title": "${titlecntr.text}",
      "body": "${bodycntr.text}",
      "userId": "1",
    };
    http.Response response = await http.post(
        Uri.parse("https://jsonplaceholder.typicode.com/posts"),
        body: body);

    if (response.statusCode == 201) {
      data = jsonDecode(response.body);
      print("RESPONSE ${response.body}");
    } else {
      print("RESPONSE ${response.statusCode}");
    }
    return data;
  }

  TextEditingController titlecntr = TextEditingController();
  TextEditingController bodycntr = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: titlecntr,
              decoration: InputDecoration(
                hintText: "title",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: bodycntr,
              decoration: InputDecoration(
                hintText: "body",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  sendData("${titlecntr}", "${bodycntr}");
                },
                child: Text("Send Data"),
              ),
            ),
            FutureBuilder(
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  return Column(
                    children: [Text("${snapshot.data}")],
                  );
                } else {
                  return Text("No data");
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
