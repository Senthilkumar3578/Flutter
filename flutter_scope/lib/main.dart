import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'counter_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
   final CounterModel counterModel = CounterModel();

  @override
  Widget build(BuildContext context) {
    return ScopedModel<CounterModel>(
      model: counterModel,
      child: MaterialApp(
        title: 'Scoped Model Example',
        home: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scoped Model Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ScopedModelDescendant<CounterModel>(
              builder: (context, child, model) {
                return Text(
                  'Count: ${model.count}',
                  style: TextStyle(fontSize: 24.0),
                );
              },
            ),
            SizedBox(height: 16.0),
            ScopedModelDescendant<CounterModel>(
              builder: (context, child, model) {
                return ElevatedButton(
                  onPressed: () => model.increment(),
                  child: Text('Increment'),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
