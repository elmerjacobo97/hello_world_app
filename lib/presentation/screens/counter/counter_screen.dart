import 'package:flutter/material.dart';

// StatelessWidget, sin State
// StatefulWidget, con State

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white70,
      appBar: AppBar(
        title: const Text(
          'Counter',
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.w300),
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$clickCounter',
                style: const TextStyle(
                    fontSize: 160, fontWeight: FontWeight.w100)),
            Text(clickCounter == 1 ? 'Click' : 'Clicks',
                style: const TextStyle(
                  fontSize: 25,
                )),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              clickCounter++;
            });
          },
          child: const Icon(Icons.plus_one_outlined)),
    );
  }
}
