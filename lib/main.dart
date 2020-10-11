import 'package:task_manager/mainscreen.dart';
import 'package:flutter/material.dart';

void main() => runApp(TaskManager());

class TaskManager extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreen(),
    );
  }
}
