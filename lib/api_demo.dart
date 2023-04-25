import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class DemoApi extends StatefulWidget {
  const DemoApi({Key? key}) : super(key: key);

  @override
  State<DemoApi> createState() => _DemoApiState();
}

class _DemoApiState extends State<DemoApi> {
  Future<List<dynamic>> getData() async {
    var data;
    http.Response response = await http.get(
      Uri.parse('https://jsonplaceholder.typicode.com/todos'),
    );

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
              shrinkWrap: true,
              itemBuilder: (context, index) =>
                  Text('$index ${snapshot.data![index]['title']}'),
            );
          } else {
            return CircularProgressIndicator();
          }
        },
      ),
    );
  }
}
