import 'package:flutter/material.dart';
import 'package:homecoffee/models/person.dart';
import 'package:homecoffee/models/producto.dart';
import 'package:homecoffee/models/receta.dart';

class Sistema extends ChangeNotifier {
  List<Person> listaUsuarios = [];
  List<Receta> listaRecetas = [];
  List<Producto> listaProductos = [];

  // Método para registrar un usuario y notificar
  void registrarUsuario(Person usuario) {
    listaUsuarios.add(usuario);
    notifyListeners();
  }

  // Método para agregar un producto y notificar
  void crearProducto(Producto producto) {
    listaProductos.add(producto);
    notifyListeners();
  }
}
