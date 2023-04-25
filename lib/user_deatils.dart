import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class UserDetails extends StatefulWidget {
  const UserDetails({Key? key, required this.id}) : super(key: key);

  final int id;

  @override
  State<UserDetails> createState() => _UserDetailsState();
}

class _UserDetailsState extends State<UserDetails> {
  Future<List<dynamic>> getData() async {
    var data;

    http.Response response = await http.get(
        Uri.parse("https://jsonplaceholder.typicode.com/users/${widget.id}"));

    if (response.statusCode == 200) {
      data = jsonDecode(response.body);

      print("RESPONSE${response.statusCode}");
    } else {
      print("RESPONSE${response.statusCode}");
    }
    return data;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: getData(),
        builder: (context, snapshot) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text("${snapshot.data}"),
              ),
            ],
          );
        },
      ),
    );
  }
}
