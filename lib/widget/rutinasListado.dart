// ignore_for_file: unnecessary_import

import 'package:fitness_app/widget/widget.dart';
import 'package:flutter/material.dart';

Widget rutinasListado(BuildContext context) {
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
            image:
                "https://diccionarioactual.com/wp-content/uploads/2017/10/fit.jpg",
          ),
        ),
      ),
      textoRutina()
    ],
  );
}
