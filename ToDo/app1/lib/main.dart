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
            body: Center(
                child: Container(
                    color: Colors.deepPurpleAccent,
                    width: double.infinity,
                    height: double.infinity,
                    child: ListView(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: Center(child: Text('sikatenda')),
                            decoration: BoxDecoration(
                                color: Colors.amber,
                                borderRadius: BorderRadius.circular(12.0)),
                            height: 100,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: Center(child: Text('Feruzi')),
                            decoration: BoxDecoration(
                                color: Colors.amber,
                                borderRadius: BorderRadius.circular(12.0)),
                            height: 100,
                          ),
                        )
                      ],
                    )))));
  }
}
