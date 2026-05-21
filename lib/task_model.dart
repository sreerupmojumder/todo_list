import 'package:flutter/material.dart';

class TaskModel {
  final String id;
  final String title;
  final String time;
  final String status;
  final Color statusColor;
  final IconData icon;
  final Color iconBg;

  TaskModel({
    required this.id,
    required this.title,
    required this.time,
    required this.status,
    required this.statusColor,
    required this.icon,
    required this.iconBg,
  });
}
