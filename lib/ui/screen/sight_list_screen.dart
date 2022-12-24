import 'package:flutter/material.dart';

class SightListScreen extends StatefulWidget {
  const SightListScreen({Key? key}) : super(key: key);

  @override
  State<SightListScreen> createState() => _SightListScreenState();
}

class _SightListScreenState extends State<SightListScreen> {
  int counter = 0;

  void _increment() {
    setState(() {
      counter += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, 21),
        child: Text("AppBarText"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text("Hello! It is SightListScreen"),
            const Text("Counter value :"),
            Container(
              color: Colors.amberAccent,
              child: Text(
                "$counter",
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
      backgroundColor: Colors.lightBlue,
      floatingActionButton: FloatingActionButton(onPressed: _increment),
    );
  }
}
