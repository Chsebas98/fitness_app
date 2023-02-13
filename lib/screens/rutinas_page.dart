import '../widget/widget.dart';

class RutinasScreen extends StatelessWidget {
  const RutinasScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> rutinaName =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    String nombre = rutinaName['nombre'];
    String image =
        "https://external-preview.redd.it/TENHKbV34X19-P3KA46xKI7V3k6p9w951dvBXljhWes.jpg?width=640&crop=smart&auto=webp&s=4ec4b5d1cea2cfb8bba00541e8d0fcd22df28d95";

    return Scaffold(
        backgroundColor: Colors.white,
        body: CustomScrollView(
          slivers: [appBarRutinas("Rutinas de $nombre"), appBarDetalle(image)],
        ));
  }
}
