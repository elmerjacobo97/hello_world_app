import 'package:flutter/material.dart';
import 'package:hello_world_app/presentation/screens/counter/counter_functions_screen.dart';
// import 'package:hello_world_app/presentation/screens/counter/counter_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Eliminar etiqueta debug
      theme: ThemeData(
          useMaterial3: true,
          colorSchemeSeed: Colors.purple), // Habilitar material 3
      // home: const CounterScreen(),
      home: const CounterFunctionsScreen(),
    );
  }
}
