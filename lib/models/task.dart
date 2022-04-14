import 'dart:io';

import 'package:flutter/material.dart';

class Task {
  final int id;
  final Color color;
  final String title;
  final bool isChecked;

  Task(
      {required this.id,
      required this.color,
      required this.title,
      required this.isChecked});
}

class CircleColor {
  final Color circleColor;
  final int index;

  CircleColor({required this.circleColor, required this.index});
}

List<CircleColor> color_list = [
  CircleColor(index: 0,circleColor: Color(0xFF209653)),
  CircleColor(index: 1,circleColor: Color(0xFFEB5758)),
  CircleColor(index: 2,circleColor: Color(0xFFF2C94C)),
  CircleColor(index: 3,circleColor: Color(0xFF2E80ED)),
  CircleColor(index: 4,circleColor: Color(0xFFF2994B)),
];

List<Task> task_list = [
  Task(id: 2, color: Colors.red, title: 'Nastya', isChecked: true),
  Task(id: 3, color: Colors.yellow, title: 'yesterday you said tomorrow', isChecked: true),
  Task(id: 4, color: Colors.blue, title: 'Mike', isChecked: true),
  Task(id: 5, color: Colors.orange, title: 'Alan', isChecked: true),
  Task(id: 6, color: Colors.green, title: 'Adam', isChecked: true),
  Task(id: 7, color: Colors.green, title: 'Ron', isChecked: true),
  Task(id: 8, color: Colors.green, title: 'Gabriella', isChecked: true),
  Task(id: 2, color: Colors.red, title: 'Nastya', isChecked: true),
  Task(id: 3, color: Colors.yellow, title: 'yesterday you said tomorrow', isChecked: true),
  Task(id: 4, color: Colors.blue, title: 'Mike', isChecked: true),
  Task(id: 5, color: Colors.orange, title: 'Alan', isChecked: true),
  Task(id: 6, color: Colors.green, title: 'Adam', isChecked: true),
  Task(id: 7, color: Colors.green, title: 'Ron', isChecked: true),
  Task(id: 8, color: Colors.green, title: 'Gabriella', isChecked: true),
];
