import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Ask me Anything'),
          backgroundColor: Colors.red,
        ),
        body: AmaPage(),
      ),
    ),
  );
}

class AmaPage extends StatefulWidget {
  @override
  _AmaPageState createState() => _AmaPageState();
}

class _AmaPageState extends State<AmaPage> {
  int ballnumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Expanded(
          child: FlatButton(
        child: Image.asset('images/ball$ballnumber.png'),
        onPressed: () {
          setState(() {
            ballnumber = Random().nextInt(5) + 1;
          });
        },
      )),
    );
  }
}
