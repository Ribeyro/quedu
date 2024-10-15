import 'package:flutter/material.dart';
import 'views/splash.dart';
import 'views/home.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quedu',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(), // Pantalla de splash como pantalla inicial
      routes: {
        '/home': (context) => HomeScreen(), // Ruta para la pantalla de inicio
      },
    );
  }
}