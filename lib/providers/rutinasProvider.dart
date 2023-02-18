// ignore_for_file: file_names

import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class _RutinasProvider {
  List<dynamic> rutinas = [];
  List<dynamic> rutina = [];

  //?cargar la lista desde el json de rutina individual
  Future<List<dynamic>> cargarRutina(String nombreRutina) async {
    //cargo el JSON
    final resp = await rootBundle.loadString("data/rutinas.json");
    //MAPEO el JSON
    Map<String, dynamic> rutinaMap = jsonDecode(resp);
    // Añado al array según el nombre de cada Rutina
    rutina = rutinaMap[nombreRutina];

    //devuelvo el array
    return rutina;
  }
}

final rutinasProvider = _RutinasProvider();
