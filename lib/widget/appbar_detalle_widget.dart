import 'package:flutter/material.dart';

Widget appBarDetalle(String foto) {
  return SliverAppBar(
    expandedHeight: 200.0,
    floating: false,
    automaticallyImplyLeading:
        false, //quitar una flecha blanca que aparece en la imagen
    flexibleSpace: FlexibleSpaceBar(
        background: FadeInImage.assetNetwork(
            placeholder: "assets/jar_loading.gif",
            image: foto,
            fadeInDuration: const Duration(seconds: 2),
            fit: BoxFit.cover)),
  );
}
