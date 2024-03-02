import 'package:flutter/material.dart';

class MySecondaryPage extends StatefulWidget {
  const MySecondaryPage({super.key, required this.title});

  final String title;

  @override
  State<MySecondaryPage> createState() => _MySecondaryPageState();
}

class _MySecondaryPageState extends State<MySecondaryPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Decrement',
        child: const Icon(Icons.exposure_minus_1),
      ),
    );
  }
}
