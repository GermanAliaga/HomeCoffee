import 'package:flutter/material.dart';
import 'package:homecoffee/models/comentario.dart';
import 'package:homecoffee/models/receta.dart';

class Person extends ChangeNotifier {
  String id = '';
  String nombre = 'Joe Doe';
  String calificacion = '4.6';
  List<Receta> listaRecetas = [];
  List<Comentario> listaComentarios = [];
  List<Receta> listaFavoritos = [];
  String imagenPerfil = '';
  String correo = '';
  String contrasena = '';

  // Método para agregar una receta y notificar
  void agregarReceta(Receta receta) {
    listaRecetas.add(receta);
    notifyListeners();
  }

  // Método para agregar un comentario y notificar
  void agregarComentario(Comentario comentario) {
    listaComentarios.add(comentario);
    notifyListeners();
  }

  // Método para marcar receta como favorita
  void marcarFavorito(Receta receta) {
    if (!listaFavoritos.contains(receta)) {
      listaFavoritos.add(receta);
      notifyListeners();
    }
  }
}
