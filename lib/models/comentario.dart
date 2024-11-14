import 'package:flutter/material.dart';

class Comentario extends ChangeNotifier {
  String id = ''; // Se inicializa con un valor por defecto
  String nombreCreador = '';
  Image? imagenCreador; // Se hace opcional
  String descripcion = '';

  // Método para actualizar la descripción
  void actualizarDescripcion(String nuevaDescripcion) {
    descripcion = nuevaDescripcion;
    notifyListeners(); // Notifica a los consumidores que hubo un cambio
  }
}
