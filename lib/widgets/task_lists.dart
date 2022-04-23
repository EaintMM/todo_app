import 'package:flutter/material.dart';

import '../models/task.dart';
import 'task_tile.dart';

class TaskLists extends StatefulWidget {
  const TaskLists({
    Key? key,
  }) : super(key: key);

  @override
  State<TaskLists> createState() => _TaskListsState();
}

class _TaskListsState extends State<TaskLists> {
  List<Task> tasks = [
    Task(title: 'To do exercise'),
    Task(title: 'To meditate'),
    Task(title: 'To buy MAC'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return TaskTile(
          title: tasks[index].title!,
          checkBoxState: tasks[index].checkBoxState,
          checkBoxCallBack: (value) {
            setState(() {
              tasks[index].toggleCheckBox();
            });
          },
        );
      },
      itemCount: tasks.length,
    );
  }
}
