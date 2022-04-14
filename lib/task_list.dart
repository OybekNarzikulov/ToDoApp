import 'package:flutter/material.dart';

import 'models/task.dart';
import 'task_item.dart';

class TaskList extends StatelessWidget {
  const TaskList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.7,
      child: ListView(
        children: task_list.map((e) => TaskItem(task: e)).toList(),
      ),
    );
  }
}
