import 'package:flutter/material.dart';

class MyList extends StatelessWidget {
  final String name;
  final String completed;

  const MyList({
    super.key,
    required this.name,
    required this.completed,
  });

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
                    onPressed: () {}, icon: const Icon(Icons.edit_rounded)),
                const SizedBox(
                  width: 100,
                ),
                IconButton(onPressed: () {}, icon: const Icon(Icons.delete)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
