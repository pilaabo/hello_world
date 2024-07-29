import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello World Travel Title',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello World Travel App'),
        ),
        body: Center(
          child: Text(
            'Hello World Travel',
          ),
        ),
      ),
    );
  }
}
