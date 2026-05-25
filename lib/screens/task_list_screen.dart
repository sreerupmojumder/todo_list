import 'package:flutter/material.dart';
import 'package:todo_list_app/screens/add_task_screen.dart';
import 'package:todo_list_app/screens/contact_screen.dart';
import 'package:todo_list_app/task_model.dart';

class TaskListScreen extends StatelessWidget {
  const TaskListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<TaskModel> tasks = [
      TaskModel(
        id: '01',
        title: 'Market Research',
        time: '10:00 AM (10 minutes ago)',
        status: 'Done',
        statusColor: Color(0xFF6C5CE7),
        icon: Icons.business_center,
        iconBg: Colors.purpleAccent,
      ),
      TaskModel(
        id: '02',
        title: 'Competitive Analysis',
        time: '12:00 PM',
        status: 'In Progress',
        statusColor: Colors.deepOrange,
        icon: Icons.business_center,
        iconBg: Colors.purpleAccent,
      ),
      TaskModel(
        id: '03',
        title: 'Create Low-fidelity Wireframe',
        time: '07:00 PM',
        status: 'To-do',
        statusColor: Color(0xFF2196F3),
        icon: Icons.person,
        iconBg: Colors.deepPurple,
      ),
      TaskModel(
        id: '04',
        title: 'How to pitch a Design Sprint',
        time: '09:00 PM',
        status: 'To-do',
        statusColor: Color(0xFF2196F3),
        icon: Icons.menu_book_outlined,
        iconBg: Colors.deepOrange,
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ContactScreen()),
              );
            },
            icon: Icon(Icons.contacts, color: Colors.black),
          ),
          SizedBox(width: 20),
        ],
        title: Text(
          'To-Do List',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 26,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddTaskScreen()),
          );
        },
        backgroundColor: Colors.deepPurple,
        child: Icon(Icons.add, color: Colors.white),
      ),

      body: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          final task = tasks[index];
          return Container(
            margin: EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
            height: 125,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.02),
                  blurRadius: 10,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: .start,
                children: [
                  //ID and icon
                  Row(
                    mainAxisAlignment: .spaceBetween,
                    children: [
                      Text(
                        "ID: ${task.id}",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: task.iconBg.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Icon(task.icon, color: task.iconBg, size: 18),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),

                  //title
                  Text(
                    task.title,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 8),
                  //Icon & time
                  Row(
                    mainAxisAlignment: .spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: .spaceBetween,
                        children: [
                          Icon(
                            Icons.access_time_filled,
                            size: 16,
                            color: Colors.deepPurple.withOpacity(0.6),
                          ),
                          SizedBox(width: 3),
                          Text(
                            task.time,
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.deepPurple.withOpacity(0.6),
                            ),
                          ),
                        ],
                      ),
                      //status
                      Container(
                        padding: EdgeInsets.symmetric(
                          vertical: 3,
                          horizontal: 5,
                        ),
                        decoration: BoxDecoration(
                          color: task.statusColor.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          task.status,
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: task.statusColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
