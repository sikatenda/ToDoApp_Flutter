import 'package:app1/dialogBox.dart';
import 'package:app1/listItem.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: MyWidget()));
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  final List todoList = ["jacques", "alex", "nathan", "emil"];
  final _controller = TextEditingController();

  void saveTask() {
    setState(() {
      todoList.add([_controller, '===']);
      _controller.clear();
    });
    Navigator.of(context).pop();
  }

  //create new task
  void createTask() {
    showDialog(
      context: context,
      builder: (context) {
        return MyDialog(
          controller: _controller,
          onSave: saveTask,
          onCancel: Navigator.of(context).pop,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        onPressed: createTask,
        child: const Icon(Icons.add_circle),
      ),
    );
  }
}
