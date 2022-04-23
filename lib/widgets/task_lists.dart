import 'package:flutter/material.dart';

import '../models/task.dart';
import 'task_tile.dart';

class TaskLists extends StatefulWidget {
  const TaskLists({
    Key? key,
    required this.tasks,
  }) : super(key: key);
  final List<Task> tasks;

  @override
  State<TaskLists> createState() => _TaskListsState();
}

class _TaskListsState extends State<TaskLists> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return TaskTile(
          title: widget.tasks[index].title!,
          checkBoxState: widget.tasks[index].checkBoxState,
          checkBoxCallBack: (value) {
            setState(() {
              widget.tasks[index].toggleCheckBox();
            });
          },
        );
      },
      itemCount: widget.tasks.length,
    );
  }
}
