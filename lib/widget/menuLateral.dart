// ignore_for_file: file_names

import 'package:flutter/material.dart';

Drawer menuLateral(context) {
  return Drawer(
    elevation: 0.0,
    child: Container(
      decoration: const BoxDecoration(color: Colors.black),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Container(
              alignment: Alignment.center,
              child: const SizedBox(
                child: Text(
                  "OPCIONES",
                  style: TextStyle(
                      fontFamily: 'PlayfairDisplay-Bold',
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(154, 221, 44, 1),
                      fontSize: 29.0),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 440.00,
          ),
          ListTile(
              title: Row(
            children: [
              IconButton(
                onPressed: () {},
                icon:
                    const Icon(Icons.logout_outlined, color: Color(0xff9ADD2C)),
              ),
              const Text(
                "Cerrar Sesión",
                style: TextStyle(color: Colors.white60, fontSize: 17.0),
              ),
            ],
          )
              //algo de firebase va aquí @Jonathan
              /*FirebaseAuth.instance.signOut().then((value) {
                  print("Salio correctamente");
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignInScreen()));
                });*/

              ),
          ListTile(
            title: Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.copyright,
                      color: Color(0xff9ADD2C),
                    )),
                Text("Todos los derechos resservados",
                    style: TextStyle(
                        fontSize: 10.0, color: Colors.blueGrey.shade300))
              ],
            ),
          )
        ],
      ),
    ),
  );
}
