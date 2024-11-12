import 'package:flutter/material.dart';
import 'package:toko_anita/screens/menu.dart'; 

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Toko Anita',
      theme: ThemeData(
        // Set primaryColor and secondary color directly
        primaryColor: const Color.fromARGB(255, 66, 159, 125), // Hijau
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color.fromARGB(255, 66, 159, 125), // Hijau
          secondary: const Color.fromARGB(255, 43, 143, 152), // Teal
        ),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}
