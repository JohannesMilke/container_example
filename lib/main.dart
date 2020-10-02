import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final String title = 'Container Example';

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: title,
        theme: ThemeData(primarySwatch: Colors.deepOrange),
        home: MainPage(title: title),
      );
}

class MainPage extends StatefulWidget {
  final String title;

  const MainPage({
    @required this.title,
  });

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Container(
            child: Text(
              'Hello World',
              style: TextStyle(fontSize: 24),
            ),

            // constraints: BoxConstraints(
            //   minWidth: 50,
            //   maxWidth: 200,
            //   maxHeight: 30,
            // ),
            transform: Matrix4.identity(),
            padding: EdgeInsets.all(64),
            //margin: EdgeInsets.fromLTRB(8, 32, 0, 0),
            decoration: BoxDecoration(
              color: Colors.red,
              border: Border.all(
                color: Colors.black,
                width: 6,
                style: BorderStyle.solid,
              ),
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.red,
                  blurRadius: 8,
                  spreadRadius: 3,
                  offset: Offset(30, 20),
                ),
              ],
            ),
          ),
        ),
      );
}
