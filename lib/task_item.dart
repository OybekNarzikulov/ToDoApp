import 'package:flutter/material.dart';
import 'package:todo_app/models/task.dart';

class TaskItem extends StatelessWidget {
  final Task task;

  TaskItem({required this.task});

  final double borderRadius = 15;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 4),
      elevation: 0,
      color: Color(0xFFEEEEEE),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius)),
      child: ListTile(
        dense: true,
        contentPadding: EdgeInsets.only(left: 20),
        leading: Container(
          height: 18,
          width: 18,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7),
            color: task.color,
          ),
        ),
        title: Text(
          task.title,
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
        ),
        trailing: Container(
            width: MediaQuery.of(context).size.width * 0.13,
            height: double.maxFinite,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.horizontal(
                    right: Radius.circular(borderRadius)),
                color: Color(0xFF6FB88E)),
            child: Icon(Icons.check, size: 35, color: Colors.white)),
      ),
    );
  }
}
