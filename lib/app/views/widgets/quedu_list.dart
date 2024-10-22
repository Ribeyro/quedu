import 'package:flutter/material.dart';

class QueduList extends StatelessWidget {
  final List<String> quedus = [
    "Teoría Semana 06 - Ingeniería de Requerimientos",
    "Teoría Semana 06 - Ingeniería de Requerimientos",
    "Teoría Semana 06 - Ingeniería de Requerimientos"
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Mis Quedus", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Row(
              children: [
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {
                    // Acción para el ícono de agregar
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
        ...quedus.map((quedu) => Padding(
          padding: EdgeInsets.symmetric(vertical: 5),
          child: ListTile(
            title: Text(quedu),
            trailing: Text("02/08"),
            tileColor: Colors.grey[300],
          ),
        )),
      ],
    );
  }
}