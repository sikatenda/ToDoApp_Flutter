import 'dart:ffi';

import 'package:app1/updateDialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyList extends StatelessWidget {
  final String name;
  final String completed;
  VoidCallback onDelete;
  VoidCallback onUpdate;

  var _context;

  get context => _context;

  set context(value) {
    _context = value;
  }

  MyList(
      {super.key,
      required this.name,
      required this.completed,
      required this.onDelete,
      required this.onUpdate,
      required dynamic context})
      : _context = context;

  //update task
  void updateList() {
    showDialog(
        context: context,
        builder: (context) {
          return MyDialogUpdate(
            controller: name,
            dpValue: completed,
            onUpdate: onUpdate,
            onCancel: Navigator.of(context).pop,
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.amber, borderRadius: BorderRadius.circular(12.0)),
        height: 110,
        width: 270,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 12.0, top: 8.0),
              child: Text(name, style: const TextStyle(fontSize: 21)),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 12.0,
              ),
              child: Text(completed, style: const TextStyle(fontSize: 16)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: onUpdate, icon: const Icon(Icons.edit_rounded)),
                const SizedBox(
                  width: 100,
                ),
                IconButton(onPressed: onDelete, icon: const Icon(Icons.delete)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
