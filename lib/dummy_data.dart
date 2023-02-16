import 'models/todo_model.dart';

Future<List<TodoModel>> generateDummyTodoList() async {
  await Future.delayed(
    const Duration(
      seconds: 4,
    ),
  );

  return [
    const TodoModel(
      id: '1',
      title: 'Buy groceries',
      description: 'Get milk, eggs, and bread',
      completed: false,
      priority: Priority.high,
    ),
    const TodoModel(
      id: '2',
      title: 'Do laundry',
      description: 'Wash clothes and fold them',
      completed: false,
      priority: Priority.medium,
    ),
    const TodoModel(
      id: '3',
      title: 'Walk the dog',
      description: 'Take Fido for a walk in the park',
      completed: true,
      priority: Priority.low,
    ),
    const TodoModel(
      id: '4',
      title: 'Clean the kitchen',
      description: 'Wipe down counters and sweep floor',
      completed: false,
      priority: Priority.medium,
    ),
    const TodoModel(
      id: '5',
      title: 'Call mom',
      description: 'Check in and catch up',
      completed: true,
      priority: Priority.high,
    ),
    const TodoModel(
      id: '6',
      title: 'Pay bills',
      description: 'Pay rent, phone bill, and credit card',
      completed: false,
      priority: Priority.medium,
    ),
    const TodoModel(
      id: '7',
      title: 'Schedule appointment',
      description: 'Book dentist appointment',
      completed: false,
      priority: Priority.low,
    ),
    const TodoModel(
      id: '8',
      title: 'Write blog post',
      description: 'Write about a topic you\'re passionate about',
      completed: true,
      priority: Priority.high,
    ),
    const TodoModel(
      id: '9',
      title: 'Read book',
      description: 'Read for at least 30 minutes',
      completed: false,
      priority: Priority.low,
    ),
    const TodoModel(
      id: '10',
      title: 'Exercise',
      description: 'Go for a run or lift weights',
      completed: true,
      priority: Priority.high,
    ),
    const TodoModel(
      id: '11',
      title: 'Watch movie',
      description: 'Find a movie you\'ve been wanting to see',
      completed: false,
      priority: Priority.low,
    ),
    const TodoModel(
      id: '12',
      title: 'Learn new skill',
      description: 'Learn a new language, coding language, or other skill',
      completed: false,
      priority: Priority.medium,
    ),
    const TodoModel(
      id: '13',
      title: 'Take a nap',
      description: 'Take a power nap to recharge',
      completed: true,
      priority: Priority.low,
    ),
    const TodoModel(
      id: '14',
      title: 'Organize closet',
      description: 'Get rid of clothes you don\'t wear anymore',
      completed: false,
      priority: Priority.medium,
    ),
    const TodoModel(
      id: '15',
      title: 'Cook dinner',
      description: 'Try out a new recipe or cook your favorite dish',
      completed: true,
      priority: Priority.high,
    ),
  ];
}
