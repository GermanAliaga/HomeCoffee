import 'package:flutter/material.dart';
import 'package:homecoffee/models/producto.dart';
import 'package:homecoffee/pages/comments.dart';

class Receta extends ChangeNotifier {
  late String ID;
  late String nombre;
  late String calificacion;
  late String creador;
  late bool estadoFav;
  late String descripcion;
  late String tiempoPrep;
  var listaIngredientes = <Producto>{};
  var listaInstrumentos = <Producto>{};
  var listaComentarios = <Comments>{};
  late String imagenRef;
}

void calcularCalificacion() {
  // Info
}
