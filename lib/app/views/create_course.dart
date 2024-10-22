import 'package:flutter/material.dart';
import '../views/widgets/custom_app_bar.dart';

class CreateCourseScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold( 
      appBar: CustomAppBar(),
      body: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Crear Curso", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: "Nombre del curso",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: "Descripción",
                border: OutlineInputBorder(),
              ),
              maxLines: 5,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Acción para el botón de guardar
              },
              child: Text("Guardar"),
            ),
          ],
        ),
      )
    );
  }
}