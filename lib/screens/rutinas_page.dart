import '../widget/widget.dart';

class RutinasScreen extends StatelessWidget {
  const RutinasScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /* Desde Exercise_SET */
    Map<String, dynamic> arguments =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    /* Obtener datos del JSON */
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          appBarRutinas("Rutinas de ${arguments['name']}"),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                //final rutina = obtenerRutinaDesdeAlgunLugar(); // Aquí debes obtener la información de la rutina desde algún lugar, como una base de datos
                /* return RutinaCard(
                  nombre: rutina.nombre,
                  descripcion: rutina.descripcion,
                ); */
                return rutinasListado(context);
              },
              childCount:
                  1, // Aquí debes obtener la cantidad de rutinas desde algún lugar, como una base de datos
            ),
          ),
        ],
      ),
    );
  }
}
