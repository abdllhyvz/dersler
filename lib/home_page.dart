import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int a = 3;
  String text = "bu bir string";

  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    var _width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "bu bir denemdir",
            style: TextStyle(
                fontSize: _height * .03,
                color: Color.fromARGB(255, 144, 17, 167)),
          ),
          Text(
            a.toString(),
            style: TextStyle(fontSize: _width * .08),
          )
        ],
      ),
    );
  }
}
