import 'package:flutter/foundation.dart';
import 'models/task.dart';
class Data extends ChangeNotifier{
  List<Task> tasks = [
    Task(name: 'one'),
    Task(name: 'two'),
  ];

  void addTask(String s){
    tasks.add(Task(name:s));
    notifyListeners();
  }

  void updateTask(Task task){
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task){
    tasks.remove(task);
    notifyListeners();
  }
}