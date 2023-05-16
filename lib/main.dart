import 'package:flutter/material.dart';


class CountModel with ChangeNotifier {
  int _count = 0;

  int get count => _count;

  void incrementCount() {
    _count++;
    notifyListeners();
  }
}

 class CountProvider extends InheritedNotifier {
  final CountModel countModel;

  CountProvider({
    required this.countModel,
    required Widget child,
  }) : super(notifier: countModel, child: child);

  static CountProvider? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<CountProvider>();
  }
}

 
class CountDisplay extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    
    final countModel = CountProvider.of(context)!.countModel;

    return Text('Count: ${countModel.count}');
  }
}

class CountButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final countModel = CountProvider.of(context)!.countModel;

    return ElevatedButton(
      onPressed: () {
      
        countModel.incrementCount();
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Counters')),
        );
      },
      child:const  Text('Count '),
    );
  }
}

class MyApp extends StatelessWidget {
  final CountModel countModel = CountModel();

  @override
  Widget build(BuildContext context) {
    return CountProvider(
      countModel: countModel,
      child: MaterialApp(
        title: 'InheritedWidge',
        home: Scaffold(
          appBar: AppBar(
            title: const Text('InheritedWidget'),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CountDisplay(),
              CountButton(),
            ],
          ),
        ),
      ),
    );
  }
}


void main() {
  runApp(MyApp());
}
