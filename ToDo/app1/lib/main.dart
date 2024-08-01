import 'package:app1/dialogBox.dart';
import 'package:app1/listItem.dart';
import 'package:app1/updateDialog.dart';
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
  final List todoList = [
    ["jacques", "undone"],
    ["alex", "undone"]
  ];
  final _controller = TextEditingController();
  String? value1 = '';

  void saveTask() {
    setState(() {
      todoList.add([_controller.text, 'undone']);
      _controller.clear();
    });
    Navigator.of(context).pop();
  }

  updateTask() {
    int index = 0;
    setState(() {
      todoList[index] = [_controller.text, value1];
      _controller.clear();
    });
    Navigator.of(context).pop();
  }

  //update task
  /*void updateList() {
    showDialog(
        context: context,
        builder: (context) {
          return MyDialogUpdate(
            controller: _controller,
            dpValue: value1,
            onUpdate: updateTask,
            onCancel: Navigator.of(context).pop,
          );
        });
  }*/

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
              context: context,
              name: todoList[index][0],
              completed: todoList[index][1],
              onDelete: () {
                setState(() {
                  todoList.removeAt(index);
                });
              },
              onUpdate: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return MyDialogUpdate(
                        controller: todoList[index][0],
                        dpValue: todoList[index][1],
                        onUpdate: () {
                          setState(() {
                            todoList[index] = [
                              todoList[index][0],
                              todoList[index][1]
                            ];
                            _controller.clear();
                          });
                          Navigator.of(context).pop();
                        },
                        onCancel: Navigator.of(context).pop,
                      );
                    });
              }, //() {
              //setState(() {
              //todoList[index] = [todoList[index][0], todoList[index][1]];
              //});
              //},
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
