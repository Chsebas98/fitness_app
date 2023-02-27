// ignore_for_file: file_names

import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class _RutinasProvider {
  List<dynamic> rutinas = [];
  List<dynamic> rutina = [];

  Future<List<dynamic>> cargarRutinas() async {
    final resp = await rootBundle.loadString("data/rutinas.json");
    Map<String, dynamic> rutinasMap = json.decode(resp);
    rutinas = rutinasMap['Cardio'];
    //print(rutinas);
    return rutinas;
  }

  //?cargar la lista desde el json de rutina individual
  Future<List<dynamic>> cargarRutina(String nombreRutina) async {
    //cargo el JSON
    final resp = await rootBundle.loadString("data/rutinas.json");
    //MAPEO el JSON
    Map<String, dynamic> rutinaMap = jsonDecode(resp);
    // Añado al array según el nombre de cada Rutina
    rutina = rutinaMap[nombreRutina];
    //print("$nombreRutina");
    //print(rutina);
    //devuelvo el array
    return rutina;
  }
}

final rutinasProvider = _RutinasProvider();
