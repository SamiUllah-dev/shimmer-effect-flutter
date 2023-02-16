import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class TodoListLoadingShimmer extends StatelessWidget {
  const TodoListLoadingShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.deepOrange.shade300,
      highlightColor: Colors.grey.shade100,
      child: ListView.builder(
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(10),
          child: ListTile(
            leading: const CircleAvatar(
              radius: 20,
            ),
            title: Container(
              height: 15,
              color: Colors.white,
            ),
            subtitle: Container(
              height: 10,
              color: Colors.white,
            ),
            trailing: Container(
              height: 18,
              width: 18,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
