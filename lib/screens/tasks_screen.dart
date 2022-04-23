import 'package:flutter/material.dart';
import 'package:todo_app/screens/add_task_screen.dart';

import '../models/task.dart';
import '../widgets/task_lists.dart';

class TasksScreen extends StatefulWidget {
  TasksScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  List<Task> tasks = [
    Task(title: 'To do exercise'),
    Task(title: 'To meditate'),
    Task(title: 'To buy milk'),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // pop up to enter the task
            showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: (context) => SingleChildScrollView(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: AddTaskScreen(
                  addTaskCallBack: (inputTitle) {
                    setState(() {
                      tasks.add(Task(title: inputTitle));
                    });
                    Navigator.pop(context);
                  },
                ),
              ),
            );
          },
          child: Icon(
            Icons.add,
          ),
        ),
        backgroundColor: Colors.lightBlueAccent,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(18),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      child: Icon(
                        Icons.list,
                        color: Colors.lightBlueAccent,
                        size: 30,
                      ),
                      backgroundColor: Colors.white,
                      radius: 24.0,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'ToDo',
                      style: TextStyle(
                        fontSize: 50.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      '${tasks.length} tasks',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                height: 100,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 2),
                  child: TaskLists(
                    tasks: tasks,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
