import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Api3 extends StatefulWidget {
  const Api3({Key? key}) : super(key: key);

  @override
  State<Api3> createState() => _Api3State();
}

class _Api3State extends State<Api3> {
  Future<List<dynamic>> getdata() async {
    var data;
    http.Response response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/comments'));

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
    getdata();
    return Scaffold(
      body: FutureBuilder(
        future: getdata(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return ListView.builder(
              shrinkWrap: true,
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                return Text('$index ${snapshot.data![index]['email']}');
              },
            );
          } else {
            return CircularProgressIndicator();
          }
        },
      ),
    );
  }
}
