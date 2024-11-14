import 'package:flutter/material.dart';
import 'package:homecoffee/models/producto.dart';
import 'package:homecoffee/pages/comments.dart';

class Receta extends ChangeNotifier {
  String id = '';
  String nombre = '';
  String calificacion = '';
  String creador = '';
  bool estadoFav = false;
  String descripcion = '';
  String tiempoPrep = '';
  List<Producto> listaIngredientes = [];
  List<Producto> listaInstrumentos = [];
  List<Comments> listaComentarios = [];
  String imagenRef = '';

  // Método para calcular la calificación y notificar
  void calcularCalificacion() {
    // Implementación de la lógica de cálculo
    notifyListeners(); // Notifica cambios a los consumidores
  }
}
