import 'package:flutter/material.dart';
import 'package:homecoffee/models/comentario.dart';
import 'package:homecoffee/models/receta.dart';

class Person extends ChangeNotifier {
  late String ID;
  late String nombre = "Joe Doe";
  late String calificacion = "4.6";
  var listaRecetas = <Receta>{};
  var listaComentarios = <Comentario>{};
  var listaFavoritos = <Receta>{};
  late String imagenPerfil;
  late String correo;
  late String contrasena;
}

void crearReceta() {
  // Info
}

void gustarReceta() {
  // Info
}

void calificarReceta() {
  // Info
}

void calcularCalificacion() {
  // Info
}

void comentar() {
  // Info
}
