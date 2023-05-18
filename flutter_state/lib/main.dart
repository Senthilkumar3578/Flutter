import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Statement App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: StatementPage(),
    );
  }
}

class StatementPage extends StatefulWidget {
  @override
  _StatementPageState createState() => _StatementPageState();
}

class _StatementPageState extends State<StatementPage> {
  String statementText = '';

  void updateStatement() {
    setState(() {
      statementText = 'This is a statement!';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Statement App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              statementText,
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: updateStatement,
              child: Text('Show Statement'),
            ),
          ],
        ),
      ),
    );
  }
}