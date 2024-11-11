import 'package:flutter/material.dart';
import 'package:homecoffee/models/receta.dart';

class Barista extends ChangeNotifier {
  late String nombre = "Barista";
  var listaRecetas = <Receta>{};
  late String imagenPerfil;
}
