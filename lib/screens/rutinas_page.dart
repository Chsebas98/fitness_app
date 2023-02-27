import 'package:fitness_app/model/carga_rutinas.dart';
import 'package:fitness_app/providers/rutinasProvider.dart';

import '../widget/widget.dart';

class RutinasScreen extends StatelessWidget {
  const RutinasScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /* Desde Exercise_SET */
    Map<String, dynamic> arguments =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    /* Obtener el nombre y ponerlo todo en minúsculas */
    final nombreRut = arguments['name'].toLowerCase();
    /* Obtener datos del JSON */

    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          appBarRutinas("Rutinas de ${arguments['name']}"),
          SliverList(
              delegate: SliverChildListDelegate([
            //final rutina = obtenerRutinaDesdeAlgunLugar(); // Aquí debes obtener la información de la rutina desde algún lugar, como una base de datos
            /* return RutinaCard(
                  nombre: rutina.nombre,
                  descripcion: rutina.descripcion,
                ); */
            FutureBuilder(
                future: rutinasProvider.cargarRutina(nombreRut),
                initialData: const [],
                builder: (BuildContext context,
                    AsyncSnapshot<List<dynamic>> snapshot) {
                  return Column(
                    children: snapshot.hasData
                        ? rutinasCargaListado(context, snapshot.data!)
                        : [
                            const SizedBox(height: 20),
                            Image.asset("assets/404.png")
                          ],
                  );
                })
          ])),
        ],
      ),
    );
  }
}
