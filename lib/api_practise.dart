import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Api1 extends StatefulWidget {
  const Api1({Key? key}) : super(key: key);

  @override
  State<Api1> createState() => _Api1State();
}

class _Api1State extends State<Api1> {
  Future<List<dynamic>> getData() async {
    var data;
    http.Response response =
        await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));

    if (response.statusCode == 200) {
      data = jsonDecode(response.body);
      print('RESPONSE DATA ${data[0]}');
    } else {
      print('STATUS ${response.statusCode}');
    }
    return data;
  }

  @override
  Widget build(BuildContext context) {
    getData();
    return Scaffold(
      body: FutureBuilder(
        future: getData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) => Center(
                child: Center(
                  child: Text("$index ${snapshot.data![index]['title']}"),
                ),
              ),
            );
          } else {
            return CircularProgressIndicator();
          }
        },
      ),
    );
  }
}
