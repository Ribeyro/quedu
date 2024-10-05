import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  // Constructor con el parámetro key nombrado
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home - Quedu'),
      ),
      body: Center(
        child: Text(
          'Bienvenido a Quedu',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}