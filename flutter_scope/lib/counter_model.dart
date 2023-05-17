import 'package:scoped_model/scoped_model.dart';

class CounterModel extends Model {
  int _count = 0;

  int get count => _count;

  void increment() {
    _count++;
    notifyListeners(); 
  }
} 