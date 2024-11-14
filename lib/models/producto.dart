import 'package:flutter/material.dart';

class Producto extends ChangeNotifier {
  String id = '';
  String nombre = '';
  String clasificacion = '';
  String imagenRef = '';
  double precio = 0.0;
  String descripcion = '';

  // Método para actualizar el precio y notificar
  void actualizarPrecio(double nuevoPrecio) {
    precio = nuevoPrecio;
    notifyListeners();
  }
}
