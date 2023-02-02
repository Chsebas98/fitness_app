import 'package:flutter/material.dart';

Drawer menuLateral(context) {
  return Drawer(
    elevation: 0.0,
    child: Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.black, Colors.black26],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter)),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.black, Colors.black26],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter),
                  image: DecorationImage(
                      image: AssetImage("assets/logo.png"), fit: BoxFit.cover)),
              child: Container(
                alignment: Alignment.center,
                child: const SizedBox(
                  child: Text(
                    "OPCIONES",
                    style: TextStyle(
                        fontFamily: 'PlayfairDisplay-Bold',
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 29.0),
                  ),
                ),
              ))
        ],
      ),
    ),
  );
}
