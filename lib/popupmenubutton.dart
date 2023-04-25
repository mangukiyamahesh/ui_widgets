import 'package:flutter/material.dart';

class PopUpMenuButton extends StatefulWidget {
  const PopUpMenuButton({Key? key}) : super(key: key);

  @override
  State<PopUpMenuButton> createState() => _PopUpMenuButtonState();
}

class _PopUpMenuButtonState extends State<PopUpMenuButton> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            PopupMenuButton(
              onSelected: (value) {},
              elevation: 10,
              itemBuilder: (BuildContext context) {
                return [
                  PopupMenuItem(child: Text("New Group")),
                  PopupMenuItem(child: Text("New broadcast")),
                  PopupMenuItem(child: Text("Linked devices")),
                  PopupMenuItem(child: Text("Starred messages")),
                  PopupMenuItem(child: Text("Payments")),
                  PopupMenuItem(child: Text("Settings")),
                ];
              },
            )
          ],
        ),
      ),
    );
  }
}
