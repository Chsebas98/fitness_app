import 'package:flutter/material.dart';

Widget appBarDetalle(String foto) {
  return SliverAppBar(
    expandedHeight: 200.0,
    floating: false,
    flexibleSpace: FlexibleSpaceBar(
        background: FadeInImage(
            placeholder: NetworkImage(foto),
            image: NetworkImage(foto),
            fadeInDuration: const Duration(milliseconds: 150),
            fit: BoxFit.cover)),
  );
}
