import 'package:flutter/material.dart';

class MyDialog extends StatelessWidget {
  MyDialog({super.key});

  final String dpValue = 'select';

  final List<String> dpItems = ['done', 'undone'];

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: const Color.fromARGB(255, 202, 142, 142),
      content: Container(
        height: 180,
        width: 150,
      ),
    );
  }
}
