import 'package:flutter/material.dart';

class UploadButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFF4A90E2), // Color del botón
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        ),
        onPressed: () {
          // Acción de subir documento
        },
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.upload_file, color: Colors.white),
            SizedBox(width: 10),
            Text("Sube un documento", style: TextStyle(color: Colors.white)),
          ],
        ),
      ),
    );
  }
}