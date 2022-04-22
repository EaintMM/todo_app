import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  const TaskTile({
    Key? key,
  }) : super(key: key);

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  // callback function for check box state changing
  /* void toggleCheckBox(bool checkState) {
    setState(() {
      isChecked = checkState;
    });
  } */

  @override
  Widget build(BuildContext context) {
    return ListTile(
      //contentPadding: EdgeInsets.all(0),
      title: Text(
        'Task 1',
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: TaskCheckBox(
        checkState: isChecked,
        //toggleCheck: (checkState) => toggleCheckBox(checkState!),
        toggleCheck: (checkState) {
          setState(() {
            isChecked = checkState!;
          });
        },
      ),
    );
  }
}

class TaskCheckBox extends StatelessWidget {
  const TaskCheckBox({
    Key? key,
    required this.checkState,
    required this.toggleCheck,
  }) : super(key: key);

  final bool checkState;
  final Function(bool? value)? toggleCheck;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: checkState,
      //onChanged: (bool? value) {},
      onChanged: toggleCheck,
    );
  }
}
