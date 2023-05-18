import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Key Example'),
        ),
        body: MyWidget(),
      ),
    );
  }
}

class MyWidget extends StatefulWidget {
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Counter: $_counter',
            style: TextStyle(fontSize: 24),
          ),
          SizedBox(height: 16),
          ElevatedButton(
            key: ValueKey(_counter),
            onPressed: () {
              setState(() {
                _counter++;
              });
            },
            child: Text('Increment Counter'),
          ),
          SizedBox(height: 16),
          ElevatedButton(
            key: ObjectKey(_counter),
            onPressed: () {
              setState(() {
                _counter--;
              });
            },
            child: Text('Decrement Counter'),
          ),
        ],
      ),
    );
  }
}
