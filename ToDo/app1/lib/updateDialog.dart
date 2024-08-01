import 'package:app1/button.dart';
import 'package:flutter/material.dart';

class MyDialogUpdate extends StatelessWidget {
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

  final List<String> items = ['done', 'undone'];

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
                value: dpValue,
                icon: const Icon(Icons.keyboard_arrow_down),
                items: items.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text(items),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  dpValue = newValue!;
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyButton(text: 'update', onPressed: onUpdate),
                const SizedBox(
                  width: 4,
                ),
                MyButton(text: 'cancel', onPressed: onCancel),
              ],
            )
          ],
        ),
      ),
    );
  }
}
