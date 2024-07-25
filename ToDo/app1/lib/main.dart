import 'package:app1/dialogBox.dart';
import 'package:app1/listItem.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  final List todoList = ["jacques", "alex", "nathan", "emil"];

  //create new task
  void createTask() {
    showDialog(
      context: context,
      builder: (context) {
        return MyDialog();
      },
    );
  }

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
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return const AlertDialog(
                  title: Text('Success'),
                  content: Text('saved'),
                );
              });
        },
        child: const Icon(Icons.add_circle),
      ),
    ));
  }
}
