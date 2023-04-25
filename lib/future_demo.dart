import 'package:flutter/material.dart';

class FutureDemo extends StatefulWidget {
  const FutureDemo({Key? key}) : super(key: key);

  @override
  State<FutureDemo> createState() => _FutureDemoState();
}

class _FutureDemoState extends State<FutureDemo> {
  Future<int> getData() async {
    print('hello');
    await Future.delayed(Duration(seconds: 3));
    print('hello2');

    return 2;
  }

  @override
  Widget build(BuildContext context) {
    getData();
    return Scaffold(
      body: FutureBuilder<int>(
        future: getData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Center(
              child: Text('${snapshot.data}'),
            );
          } else if (snapshot.hasError) {
            return const Center(
              child: Text('Plase try Again'),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
