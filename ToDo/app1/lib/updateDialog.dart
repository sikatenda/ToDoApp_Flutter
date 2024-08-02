import 'package:app1/button.dart';
import 'package:flutter/material.dart';

class MyDialogUpdate extends StatefulWidget {
  final controller;

  VoidCallback onUpdate;
  VoidCallback onCancel;

  MyDialogUpdate(
      {super.key,
      required this.controller,
      required this.dpValue,
      required this.onUpdate,
      required this.onCancel});

  String dpValue = 'undone';

  @override
  State<MyDialogUpdate> createState() => _MyDialogUpdateState();
}

class _MyDialogUpdateState extends State<MyDialogUpdate> {
  final List<String> items = ['done', 'undone'];
  //String dpValue = 'undone';

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      content: SizedBox(
        height: 180,
        width: 150,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: TextEditingController(),
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)),
                  hintText: "update task"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: DropdownButton(
                dropdownColor: Colors.grey,
                value: widget.dpValue,
                icon: const Icon(Icons.keyboard_arrow_down),
                items: items.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text(items),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    widget.dpValue = newValue!;
                  });
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyButton(text: 'update', onPressed: widget.onUpdate),
                const SizedBox(
                  width: 4,
                ),
                MyButton(text: 'cancel', onPressed: widget.onCancel),
              ],
            )
          ],
        ),
      ),
    );
  }
}
