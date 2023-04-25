import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class PostDemo extends StatefulWidget {
  const PostDemo({Key? key}) : super(key: key);

  @override
  State<PostDemo> createState() => _PostDemoState();
}

class _PostDemoState extends State<PostDemo> {
  Future<void> sendData() async {
    var data;
    Map<String, dynamic> body = {
      'title': 'foo',
      'body': 'bar',
      'userId': '1',
    };
    http.Response response = await http.post(
        Uri.parse("https://jsonplaceholder.typicode.com/posts"),
        body: body);

    if (response.statusCode == 201) {
      data = jsonDecode(response.body);

      print("RESPONSE${response.body}");
    } else {
      print("RESPONSE${response.statusCode}");
    }
    return data;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                sendData();
              },
              child: Text('Send Data'),
            ),
          ),
        ],
      ),
    );
  }
}
