import 'package:flutter/material.dart';

import 'task_tile.dart';

class TaskLists extends StatelessWidget {
  const TaskLists({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            TaskTile(),
            TaskTile(),
            TaskTile(),
          ],
        )
      ],
    );
  }
}
