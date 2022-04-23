import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({
    Key? key,
    required this.title,
    required this.checkBoxState,
    required this.checkBoxCallBack,
  }) : super(key: key);

  final String title;
  final bool checkBoxState;
  final Function(bool? val)? checkBoxCallBack;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      //contentPadding: EdgeInsets.all(0),
      title: Text(
        title,
        style: TextStyle(
          decoration: checkBoxState ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: checkBoxState,
        onChanged: (newValue) {
          checkBoxCallBack!(newValue);
        },
      ),
    );
  }
}



/* class TaskCheckBox extends StatelessWidget {
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
} */
