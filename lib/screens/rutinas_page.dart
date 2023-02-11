import '../widget/widget.dart';

class RutinasScreen extends StatelessWidget {
  const RutinasScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> rutinaName =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    String nombre = rutinaName['nombre'];
    return Scaffold(
        backgroundColor: Colors.white,
        body: CustomScrollView(
          slivers: [appBarRutinas("Rutinas de $nombre")],
        ));
  }
}
