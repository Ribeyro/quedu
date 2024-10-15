import 'package:flutter/material.dart';
import 'app/views/splash.dart'; // Importa la pantalla de splash
import 'app/views/home.dart'; // Importa la pantalla de inicio

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quedu App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/home': (context) => HomeScreen(),
      },
    );
  }
}