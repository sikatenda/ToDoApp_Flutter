import 'package:flutter/material.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

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
            body: const Center(
              child: Text("Hello jacques"),
            )));
  }
}
