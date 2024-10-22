import 'package:flutter/material.dart';

class CourseList extends StatelessWidget {
  final List<String> courses = [
    "Ingeniería de Requerimientos",
    "Desarrollo de Aplicaciones Web",
    "Base de Datos Avanzado",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Mis Cursos", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Row(
              children: [
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {
                    // Acción para el ícono de agregar
                    Navigator.pushNamed(context, '/createCourse');
                  },
                ),
                IconButton(
                  icon: Icon(Icons.arrow_forward),
                  onPressed: () {
                    // Acción para el ícono de avanzar
                  },
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 10),
        ...courses.map((course) => Padding(
          padding: EdgeInsets.symmetric(vertical: 5),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15), // Borde redondeado
            child: ListTile(
              title: Text(course),
              tileColor: Colors.grey[300],
            ),
          ),
        )),
      ],
    );
  }
}