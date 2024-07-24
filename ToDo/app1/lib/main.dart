import 'package:app1/listItem.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyWidget());
}

class MyWidget extends StatelessWidget {
  MyWidget({super.key});

  final List todoList = ["jacques", "alex", "nathan", "emil"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("To Do"),
        ),
        backgroundColor: const Color.fromARGB(255, 77, 225, 134),
      ),
      body: ListView.builder(
          itemCount: todoList.length,
          itemBuilder: (context, index) {
            return MyList(
              child: todoList[index],
            );
          }),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.grey,
        onPressed: () {},
        child: const Icon(Icons.add_circle),
      ),
    ));
  }
}
