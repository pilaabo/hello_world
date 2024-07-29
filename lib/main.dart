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
          backgroundColor: Colors.deepPurple,
        ),
        body: Center(
          child: Column(
            children: [
              Text(
                'Hello World Travel',
                style: TextStyle(
                    fontSize: 26.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue[800]),
              ),
              Text(
                'Discover the World',
                style:
                    TextStyle(fontSize: 20.0, color: Colors.deepPurpleAccent),
              ),
              Image.network(
                'https://images.freeimages.com/images/large-previews/eaa/the-beach-1464354.jpg',
                height: 350,
              ),
              ElevatedButton(
                onPressed: () => true,
                child: Text('Contact Us'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
