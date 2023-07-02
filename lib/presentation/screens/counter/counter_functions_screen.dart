import 'package:flutter/material.dart';

// StatelessWidget, sin State
// StatefulWidget, con State

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white70,
      appBar: AppBar(
        title: const Text(
          'Counter Functions',
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.w300),
        ),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                clickCounter = 0;
              });
            },
            icon: const Icon(Icons.refresh_outlined),
            color: Colors.white,
            // iconSize: 40,
          )
        ],
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
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomButton(
            icon: Icons.refresh_outlined,
            onPressed: () {
              setState(() {
                clickCounter = 0;
              });
            },
          ),
          const SizedBox(height: 10),
          CustomButton(
              icon: Icons.plus_one_outlined,
              onPressed: () {
                setState(() {
                  clickCounter++;
                });
              }),
          const SizedBox(height: 10),
          CustomButton(
              icon: Icons.exposure_minus_1_outlined,
              onPressed: () {
                setState(() {
                  if (clickCounter > 0) {
                    clickCounter--;
                  }
                });
              })
        ],
      ),
    );
  }
}

// Widget personalizado
class CustomButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;

  const CustomButton({
    super.key,
    required this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        // shape: const StadiumBorder(), // Border circular
        // enableFeedback: true, // Habilitar feedback( vibrar)
        // elevation: 10, // sombra
        // splashColor: Colors.amber, // color de ripple
        // backgroundColor: Colors.deepPurple,
        // mini: true, // tamaño pequeño
        onPressed: onPressed,
        child: Icon(icon));
  }
}
