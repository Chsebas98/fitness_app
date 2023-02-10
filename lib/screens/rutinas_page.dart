import 'package:flutter/material.dart';

import '../providers/rutinasProvider.dart';
import '../widget/widget.dart';

class RutinasScreen extends StatelessWidget {
  const RutinasScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> rutina =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    return Scaffold(
        backgroundColor: Colors.black,
        body: CustomScrollView(
          slivers: <Widget>[
            // ignore: prefer_interpolation_to_compose_strings
            appBarRutinas("Rutinas de " + rutina["nombre"]),
            SliverList(
                delegate: SliverChildListDelegate([
              titles(
                  rutina["nombre"],
                  const TextStyle(
                      fontFamily: 'PlayfairDisplay-Bold',
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 34.0)),

              titles(
                  "Lista de ${rutina["nombre"]}",
                  const TextStyle(
                      fontFamily: 'PlayfairDisplay-Bold',
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 34.0)),
              FutureBuilder(
                future: rutinasProvider.cargarRutina(rutina["nombre"]),
                initialData: const [],
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  return Column(
                      //children: recetasListado(context, snapshot.data!),
                      );
                },
              )
              //recetasListado(context),
            ]))
          ],
        ));
  }
}
