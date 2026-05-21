import 'package:flutter/material.dart';

class TaskListScreen extends StatelessWidget {
  const TaskListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Text('To-Do List', style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 26,
              color: Colors.black
            ),),
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),

      body: Column(
        crossAxisAlignment: .start,
        children: [
          //ID and icon
          Row(
            mainAxisAlignment: .spaceBetween,
            children: [
              Text('ID: 01'),
              Icon(Icons.add_box_outlined)
            ],
          ),
          //title
          Text('Title'),
          //Icon & time
          Row(
            mainAxisAlignment: .spaceBetween,
            children: [
              Row(
                mainAxisAlignment: .spaceBetween,
                children: [
                  Icon(Icons.timer),
                  Text('12.00 AM')
                ],
              ),
              //status
              Text('Done'),
            ],
          )

        ],
      ),
    );
  }
}
