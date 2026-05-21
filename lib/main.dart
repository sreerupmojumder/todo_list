import 'package:flutter/material.dart';
import 'package:todo_list_app/screens/task_list_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'To-Do List',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFF8F9FA),
      ),
      home: const TaskListScreen(),
    );
  }
}
