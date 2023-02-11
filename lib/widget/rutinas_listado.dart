import 'package:fitness_app/providers/rutinasProvider.dart';
import 'package:flutter/material.dart';

List<Widget> rutinasListado(BuildContext context, List<dynamic> rutinas) {
  final List<Widget> listadoRutina = [];
  final List<dynamic> rutinas = rutinasProvider.rutinas;

  for (var rutina in rutinas) {
    final Widget widgetProv = _imagenRutina(context, rutina);
    listadoRutina.add(widgetProv);
  }

  return listadoRutina;
}

Widget _imagenRutina(BuildContext context, Map<String, dynamic> rutina) {
  return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, "rutina", arguments: rutina);
      },
      child: Stack(
        children: [
          //imagen configuración
          Container(
              width: 130.0,
              height: 100.0,
              margin: const EdgeInsets.only(right: 10.0, top: 5.0),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image(
                    image: NetworkImage(rutina["foto"]),
                    fit: BoxFit.cover,
                  ))),
          //texto dentro de la imagen configuración
          Container(
            alignment: Alignment.bottomCenter,
            padding: const EdgeInsets.only(left: 0, bottom: 15.0),
            child: Text(
              rutina["nombre"],
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  decorationColor: Colors.black,
                  decorationStyle: TextDecorationStyle.wavy),
            ),
          )
        ],
      ));
}
