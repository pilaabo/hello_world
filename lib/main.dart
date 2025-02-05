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
        body: Builder(
          builder: (context) {
            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Center(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          'Hello World Travel',
                          style: TextStyle(
                              fontSize: 26.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue[800]),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Text(
                          'Discover the World',
                          style:
                              TextStyle(fontSize: 20.0, color: Colors.deepPurpleAccent),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Image.network(
                          'https://images.freeimages.com/images/large-previews/eaa/the-beach-1464354.jpg',
                          height: 350,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: ElevatedButton(
                          onPressed: () => contactUs(context),
                          child: Text('Contact Us'),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          }
        ),
      ),
    );
  }

  void contactUs(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Contact Us'),
            content: Text('Mail us at hello@world.com'),
            actions: <Widget>[
              TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text('Close'))
            ],
          );
        });
  }
}
