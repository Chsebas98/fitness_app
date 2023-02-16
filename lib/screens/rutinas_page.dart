import '../widget/widget.dart';

class RutinasScreen extends StatelessWidget {
  const RutinasScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> rutinaName =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    String nombre = rutinaName['nombre'];
    String image =
        "https://cdn.shopify.com/s/files/1/2672/9750/articles/3_800x.jpg?v=1645428094";

    return Scaffold(
        backgroundColor: Colors.white,
        body: CustomScrollView(
          slivers: [appBarRutinas("Rutinas de $nombre"), appBarDetalle(image)],
        ));
  }
}
