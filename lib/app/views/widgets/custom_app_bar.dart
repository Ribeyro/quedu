import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;

  CustomAppBar({this.height = 170}); // Permite ajustar la altura mediante un parámetro

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Imagen de fondo del AppBar
        Positioned.fill(
          child: Image.asset(
            'assets/images/appbar.png',
            fit: BoxFit.cover, // Asegura que la imagen cubra todo el AppBar
          ),
        ),
        // AppBar transparente encima de la imagen de fondo
        AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Row(
            children: [
              // Ícono de Quedu alineado a la izquierda
              Image.asset('assets/images/quedu_icon.png', width: 30),
              SizedBox(width: 10),
              // Texto de título 'Quedu' centrado
              Expanded(
                child: Center(
                  child: Text(
                    'Quedu',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
          actions: [
            // Botón del menú
            IconButton(
              icon: Icon(Icons.menu, color: Colors.white), // Asegúrate de que el ícono sea visible sobre la imagen
              onPressed: () {
                // Acción del menú
              },
            ),
          ],
        ),
        // Texto adicional debajo del AppBar
        Positioned(
          top: 150, // Ajusta esta posición para mover el texto más arriba
          left: 0,
          right: 0,
          child: Center(
            child: Text(
              "Hola Ribeyro, ¿Listo para avanzar?",
              style: TextStyle(fontSize: 12, color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }

  // Define el tamaño preferido del AppBar
  @override
  Size get preferredSize => Size.fromHeight(height); // Ajusta la altura según tu diseño
}