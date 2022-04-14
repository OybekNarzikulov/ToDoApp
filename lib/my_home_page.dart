import 'package:flutter/material.dart';
import 'package:todo_app/user_inpute.dart';

import 'task_list.dart';
import 'models/task.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void addNewTask(Color userColor, String userText) {
    final newTask =
        Task(id: 1, color: userColor, isChecked: true, title: userText);
    setState(() {
      task_list.add(newTask);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('To do App'),
        centerTitle: true,
        backgroundColor: Color(0xFFF2C94C),
        elevation: 2,
        titleTextStyle: const TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          TaskList(),
          UserInput(),
        ],
      ),
    );
  }
}
