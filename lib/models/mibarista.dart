import 'package:flutter/material.dart';
import 'package:homecoffee/models/receta.dart';

class Barista extends ChangeNotifier {
  String nombre = 'Barista';
  List<Receta> listaRecetas = [];
  String imagenPerfil = '';

  // Método para agregar recetas y notificar
  void agregarReceta(Receta receta) {
    listaRecetas.add(receta);
    notifyListeners();
  }
}
