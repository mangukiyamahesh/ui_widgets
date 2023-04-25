import 'package:flutter/material.dart';

class DialogDemo extends StatefulWidget {
  const DialogDemo({Key? key}) : super(key: key);

  @override
  State<DialogDemo> createState() => _DialogDemoState();
}

class _DialogDemoState extends State<DialogDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListTile(
            leading: InkResponse(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog();
                  },
                );
              },
              child: CircleAvatar(
                radius: 50,
              ),
            ),
            title: Text("My Profile"),
          ),
        ],
      ),
    );
  }
}
// Dialog(
// child: Container(
// height: 400,
// width: 300,
// color: Colors.white,
// child: Column(
// children: [
// Container(
// child: Image.asset(
// "assets/images/Fruit-Salad-7.jpg",
// fit: BoxFit.cover,
// ),
// height: 340,
// width: 300,
// ),
// Container(
// height: 60,
// width: 300,
// color: Colors.grey,
// )
// ],
// ),
// ),
// )
