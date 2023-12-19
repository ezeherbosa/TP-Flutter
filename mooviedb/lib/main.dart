import 'package:flutter/material.dart';
import 'package:mooviedb/screens/home_screen.dart'; 

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Buscador de peliculas',
      home: const HomeScreen(),
    );
  }
}