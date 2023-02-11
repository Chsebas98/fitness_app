import 'package:flutter/material.dart';

Widget appBarDetalle(String foto) {
  return SliverAppBar(
    backgroundColor: Colors.white,
    expandedHeight: 200.0,
    floating: false,
    pinned: true,
    elevation: 20.0,
    iconTheme: const IconThemeData(color: Color.fromRGBO(183, 195, 206, 1)),
    flexibleSpace: FlexibleSpaceBar(
        background: FadeInImage(
            placeholder: NetworkImage(foto),
            image: NetworkImage(foto),
            fadeInDuration: const Duration(milliseconds: 150),
            fit: BoxFit.cover)),
  );
}
