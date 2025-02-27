import 'package:app1/button.dart';
import 'package:flutter/material.dart';

class MyDialog extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;
  MyDialog(
      {super.key,
      required this.controller,
      required this.onSave,
      required this.onCancel});

  String dpValue = 'done';

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
              controller: controller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)),
                  hintText: "New task"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyButton(text: 'save', onPressed: onSave),
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
