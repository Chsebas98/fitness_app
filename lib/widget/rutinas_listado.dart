// ignore_for_file: avoid_function_literals_in_foreach_calls

import 'package:flutter/material.dart';

List<Widget> rutinasListado(BuildContext context, List<dynamic> rutinas) {
  final List<Widget> listadoRutina = [];

  rutinas.forEach((e) {
    final wProve = _cuerpoListadoRutina(context, e);
    listadoRutina.add(wProve);
  });

  return listadoRutina;
}

Widget _cuerpoListadoRutina(BuildContext context, Map<String, dynamic> rutina) {
  return Text("Vale");
}

/* Widget _cuerpoListadoRutina(BuildContext context, Map<String, dynamic> rutina) {
  return Column(
    children: <Widget>[
      const SizedBox(
        height: 20.0,
      ),
      GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, "detalle", arguments: rutina);
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Image(
            image: NetworkImage(rutina['foto']),
            fit: BoxFit.fill,
            width: 300.0,
            height: 140.0,
          ),
        ),
      ),
      Container(
        alignment: AlignmentDirectional.topStart,
        margin: const EdgeInsets.only(left: 30.0, top: 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              rutina['titulo'],
              textAlign: TextAlign.left,
              style: const TextStyle(color: Colors.black),
            ),
            Text(
              rutina['descripcion'],
              textAlign: TextAlign.left,
              style: const TextStyle(
                  fontFamily: 'Avenir',
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(183, 195, 206, 1),
                  fontSize: 14.0),
            ),
            const SizedBox(
              height: 5.0,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Row(
                    children: <Widget>[
                      const Icon(Icons.alarm,
                          color: Color.fromRGBO(243, 198, 36, 1)),
                      Container(
                        margin: const EdgeInsets.only(left: 5.0),
                        child: Text(
                          rutina['duracion'],
                          style: const TextStyle(
                              fontFamily: 'Avenir',
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 14.0),
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Row(
                    children: <Widget>[
                      const Icon(Icons.auto_graph,
                          color: Color.fromRGBO(243, 198, 36, 1)),
                      Container(
                        margin: const EdgeInsets.only(left: 5.0),
                        child: Text(
                          rutina['dificultad'],
                          style: const TextStyle(
                              fontFamily: 'Avenir',
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 14.0),
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      )
    ],
  );
}


/* Widget _imagenRutina(BuildContext context, Map<String, dynamic> rutina) {
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
 */ */