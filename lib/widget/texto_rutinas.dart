// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

Widget textoRutina() {
  return Column(
    children: [
      Container(
        alignment: AlignmentDirectional.topStart,
        margin: const EdgeInsets.only(left: 30.0, top: 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Torso Superior",
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontFamily: 'PlayfairDisplay-Bold',
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(106, 15, 56, 91),
                  fontSize: 24.0),
            ),
            const Text(
              "Ejercicios para fortalecer y tonificar los músculos del pecho, espalda, hombros y brazos.",
              textAlign: TextAlign.left,
              style: TextStyle(
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
                          Icon(
                            Icons.alarm,
                            color: Color.fromRGBO(154, 221, 44, 1),
                          ),
                          Container(
                              margin:
                                  const EdgeInsets.only(left: 5.0, top: 5.0),
                              child: Text(
                                "45 min",
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
                          Icon(
                            Icons.visibility,
                            color: Color.fromRGBO(154, 221, 44, 1),
                          ),
                          Container(
                              margin:
                                  const EdgeInsets.only(left: 5.0, top: 5.0),
                              child: Text(
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
                          Icon(
                            Icons.trending_up,
                            color: Color.fromRGBO(154, 221, 44, 1),
                          ),
                          Container(
                              child: Text(
                            "Fácil",
                            style: TextStyle(
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
