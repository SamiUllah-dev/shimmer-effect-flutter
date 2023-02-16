import 'package:flutter/material.dart';
import 'package:shimmer_effect/models/todo_model.dart';

class TodoItem extends StatelessWidget {
  final TodoModel todoModel;
  const TodoItem({
    super.key,
    required this.todoModel,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: getPriorityColor(
            todoModel.priority,
          ),
        ),
        title: Text(todoModel.title),
        subtitle: Text(todoModel.description),
        trailing: Icon(
          todoModel.completed ? Icons.check_box : Icons.check_box_outline_blank,
          color: Colors.deepOrange,
        ),
      ),
    );
  }
}

Color getPriorityColor(Priority priority) {
  switch (priority) {
    case Priority.high:
      return Colors.red;
    case Priority.medium:
      return Colors.yellow;
    default:
      return Colors.green;
  }
}
