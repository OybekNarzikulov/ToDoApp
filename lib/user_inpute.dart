import 'package:flutter/material.dart';

import 'models/task.dart';

class UserInput extends StatefulWidget {
  // final Function addTask;
  //
  // UserInput({this.addTask});

  @override
  State<UserInput> createState() => _UserInputeState();
}

class _UserInputeState extends State<UserInput> {
  // Get what user typed
  final _textController = TextEditingController();

  String userText = '';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ...color_list.map((e) => GestureDetector(
                    onTap: () {},
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 20),
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: e.circleColor, shape: BoxShape.circle),
                    ),
                  ))
            ],
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.black)),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _textController,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(onPressed: (){
                        _textController.clear();
                      }, icon: Icon(Icons.clear)),
                      hintText: 'Don\'t be shy, click and write',
                      border: InputBorder.none,
                    ),
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.horizontal(
                      right: Radius.circular(14),
                    ),
                  ),
                  width: 70,
                  child: GestureDetector(
                    onTap: (){},
                    child: SizedBox(height: 50,child: Icon(Icons.add)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
