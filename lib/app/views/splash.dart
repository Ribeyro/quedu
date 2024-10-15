import 'package:flutter/material.dart';
import 'dart:async';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Navegar a la pantalla de inicio después de 3 segundos
    Timer(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacementNamed('/home');
    });

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background_icons.png'), // Asegúrate de tener esta imagen en assets
            fit: BoxFit.cover, // Asegura que la imagen cubra toda la pantalla
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/quedu_logo.png', // Asegúrate de tener esta imagen en assets
                height: 150,
              ),
              SizedBox(height: 20),
              Text(
                'Cada respuesta cuenta,\ncada error enseña',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF9E9E9E),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}