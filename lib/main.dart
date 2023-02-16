import 'package:flutter/material.dart';
import 'package:shimmer_effect/widgets/todo_item.dart';
import 'package:shimmer_effect/widgets/todo_list_loading_shimmer.dart';

import 'dummy_data.dart';
import 'models/todo_model.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shimmer Effect',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.deepOrange,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Shimmer Effect',
        ),
      ),
      body: FutureBuilder<List<TodoModel>>(
        future: generateDummyTodoList(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const TodoListLoadingShimmer();
          }
          if (snapshot.hasError) {
            return const Center(
              child: Text('Error loading data'),
            );
          }
          if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(
              child: Text('No data to display'),
            );
          }
          final todoList = snapshot.data!;
          return ListView.builder(
            itemCount: todoList.length,
            itemBuilder: (context, index) {
              final todo = todoList[index];
              return Padding(
                padding: const EdgeInsets.all(
                  10,
                ),
                child: TodoItem(todoModel: todo),
              );
            },
          );
        },
      ),
    );
  }
}
