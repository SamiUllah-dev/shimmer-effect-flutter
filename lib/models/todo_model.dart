import 'package:flutter/foundation.dart';

@immutable
class TodoModel {
  final String id;
  final String title;
  final String description;
  final bool completed;
  final Priority priority;

  const TodoModel({
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.priority,
  });
}

enum Priority {
  high,
  medium,
  low,
}
