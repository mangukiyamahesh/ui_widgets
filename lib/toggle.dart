import 'package:flutter/material.dart';

class ToggleDemo extends StatefulWidget {
  const ToggleDemo({Key? key}) : super(key: key);

  @override
  State<ToggleDemo> createState() => _ToggleDemoState();
}

class _ToggleDemoState extends State<ToggleDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          5,
          (index) => Center(
            child: Favorite(),
          ),
        ),
      ),
    );
  }
}

class Favorite extends StatefulWidget {
  const Favorite({Key? key}) : super(key: key);

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  bool isfavorite = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      color: Colors.blue.shade100,
      margin: EdgeInsets.symmetric(vertical: 10),
      child: InkResponse(
        onTap: () {
          setState(() {
            isfavorite = !isfavorite;
          });
        },
        child: isfavorite == true
            ? Icon(
                Icons.favorite,
                color: Colors.red,
              )
            : Icon(
                Icons.favorite_outline,
                color: Colors.grey,
              ),
      ),
    );
  }
}
