import 'package:flutter/material.dart';

Widget appBarRutinas(String title) {
  return SliverAppBar(
      backgroundColor: Colors.white,
      floating: false,
      pinned: true,
      title: Text(
        title,
        style: const TextStyle(
          fontFamily: 'PlayfairDisplay-Bold',
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      elevation: 0.0,
      iconTheme: const IconThemeData(
        color: Color.fromRGBO(154, 221, 44, 1),
      ));
}
