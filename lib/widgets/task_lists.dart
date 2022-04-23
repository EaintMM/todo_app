import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/models/task_data.dart';
import 'task_tile.dart';

class TaskLists extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (BuildContext context, taskData, Widget? child) {
        return ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return TaskTile(
              title: taskData.tasks[index].title!,
              checkBoxState: taskData.tasks[index].checkBoxState,
              checkBoxCallBack: (value) {
                taskData.updateCheck(taskData.tasks[index]);
              },
              longPressCallBack: () {
                taskData.deleteTask(taskData.tasks[index]);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
