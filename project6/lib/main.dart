import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp();
  @override
  State<StatefulWidget> createState() => TastState();
}

class TastState extends State<MyApp> {
  int num = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.blue.shade900,
          centerTitle: true,
          title: Text('Ask Me AnyThing'),
        ),
        body: Center(
          child: Container(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  num = Random().nextInt(5) + 1;
                });
              },
              child: Image(
                image: AssetImage('images/ball$num.png'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
