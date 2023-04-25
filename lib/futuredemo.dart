import 'package:flutter/material.dart';

class FutureEx1 extends StatelessWidget {
  FutureEx1({Key? key}) : super(key: key);

  List<Map<String, dynamic>> name = [
    {"Name": "Mahesh", "Email": "mahesh@gmail.com", "Mono": 9712023220},
    {"Name": "Jenis", "Email": "jenis@gmail.com", "Mono": 9999999999},
    {"Name": "Vraj", "Email": "vraj@gmail.com", "Mono": 8888888888},
  ];

  Future<List<Map<String, dynamic>>> getData() async {
    await Future.delayed(Duration(seconds: 2));

    return name;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<Map<String, dynamic>>>(
        future: getData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return ListView.builder(
              itemCount: name.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    ListTile(
                      leading: Text('${snapshot.data![index]['Name']}'),
                      title: Text('${snapshot.data![index]['Email']}'),
                      trailing: Text('${snapshot.data![index]['Mono']}'),
                    ),
                  ],
                );
              },
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text("Something went wrong"),
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
