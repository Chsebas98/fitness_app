import 'package:fitness_app/providers/rutinasProvider.dart';

import '../widget/widget.dart';

class RutinasScreen extends StatelessWidget {
  const RutinasScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /* Solo el Nombre */
    Map<String, dynamic> rutinaName =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    /* Datos desde JSON */
    final Map<String, dynamic> rutina =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    String image =
        "https://cdn.shopify.com/s/files/1/2672/9750/articles/3_800x.jpg?v=1645428094";

    return Scaffold(
        backgroundColor: Colors.white,
        body: CustomScrollView(
          slivers: [
            appBarRutinas("Rutinas de ${rutinaName['name']}"),
            //appBarDetalle(rutina["image"]),
            appBarDetalle(image),
            FutureBuilder(
                future: rutinasProvider.cargarRutina(rutinaName['name']),
                initialData: const [],
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  return Column(
                    children: rutinasListado(context, snapshot.data),
                  );
                })
          ],
        ));
  }
}
