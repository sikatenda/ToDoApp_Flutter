import 'package:flutter/material.dart';

class MyList extends StatelessWidget {
  final String child;

  const MyList({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Container(
          decoration: BoxDecoration(
              color: Colors.amber, borderRadius: BorderRadius.circular(12.0)),
          height: 100,
          width: 300,
          child: Column(
            children: [
              Text(child, style: const TextStyle(fontSize: 21)),
              const Padding(
                padding: EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Icon(Icons.edit),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(60, 0, 0, 0),
                      child: Text('see more'),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(60, 0, 0, 0),
                      child: Icon(Icons.delete),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
