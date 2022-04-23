import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(title: 'To do exercise'),
    Task(title: 'To meditate'),
    Task(title: 'To buy milk'),
  ];

  List get tasks {
    return List.unmodifiable(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  void addTask(String inputTitle) {
    _tasks.add(Task(title: inputTitle));
    notifyListeners();
  }

  void updateCheck(Task task) {
    task.toggleCheckBox();
    notifyListeners();
  }

  void deleteTask(Task task) {

    _tasks.remove(task);
    notifyListeners();
  }
}
