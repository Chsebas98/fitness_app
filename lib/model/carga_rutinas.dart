import 'package:flutter/material.dart';

List<Widget> rutinasCargaListado(
    BuildContext context, List<dynamic> rutinaData) {
  final List<Widget> datosDeRutina = [];
  // ignore: avoid_function_literals_in_foreach_calls
  rutinaData.forEach((rutina) {
    final Widget wdProv = _CardRutina(context, rutina);
    datosDeRutina.add(wdProv);
  });
  return datosDeRutina;
}

// ignore: non_constant_identifier_names
Widget _CardRutina(BuildContext context, Map<String, dynamic> rutina) {
  return Column(
    children: [
      GestureDetector(
        onTap: () {
          // ignore: avoid_print
          Navigator.pushNamed(context, "rutina_cu");
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: FadeInImage.assetNetwork(
            width: 600.0,
            height: 200.0,
            placeholder: "assets/jar_loading.gif",
            image: rutina['foto'],
          ),
        ),
      ),
      Container(
        alignment: AlignmentDirectional.topStart,
        margin: const EdgeInsets.only(left: 30.0, top: 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              rutina['titulo'],
              textAlign: TextAlign.left,
              style: const TextStyle(
                  fontFamily: 'PlayfairDisplay-Bold',
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(106, 15, 56, 91),
                  fontSize: 24.0),
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
            Container(
              margin: const EdgeInsets.only(left: 5.0, top: 5.0),
              child: Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: Row(
                        children: [
                          const Icon(
                            Icons.alarm,
                            color: Color.fromRGBO(154, 221, 44, 1),
                          ),
                          Container(
                              margin:
                                  const EdgeInsets.only(left: 5.0, top: 5.0),
                              child: Text(
                                rutina['duracion'],
                                style: const TextStyle(
                                    fontFamily: "Avenir",
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(106, 15, 56, 91),
                                    fontSize: 14.0),
                              ))
                        ],
                      )),
                  Expanded(
                      flex: 1,
                      child: Row(
                        children: [
                          const Icon(
                            Icons.visibility,
                            color: Color.fromRGBO(154, 221, 44, 1),
                          ),
                          Container(
                              margin:
                                  const EdgeInsets.only(left: 5.0, top: 5.0),
                              child: const Text(
                                "¿Cómo?",
                                style: TextStyle(
                                    fontFamily: "Avenir",
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(106, 15, 56, 91),
                                    fontSize: 14.0),
                              ))
                        ],
                      )),
                  Expanded(
                      flex: 1,
                      child: Row(
                        children: [
                          const Icon(
                            Icons.trending_up,
                            color: Color.fromRGBO(154, 221, 44, 1),
                          ),
                          // ignore: avoid_unnecessary_containers
                          Container(
                              child: Text(
                            rutina['dificultad'],
                            style: const TextStyle(
                                fontFamily: "Avenir",
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(106, 15, 56, 91),
                                fontSize: 14.0),
                          ))
                        ],
                      ))
                ],
              ),
            )
          ],
        ),
      )
    ],
  );
}
