import 'package:fitness_app/widget/appbar_widget.dart';

import '../widget/widget.dart';

class HomeScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: menuLateral(context),
        key: _scaffoldKey,
        body: CustomScrollView(
          slivers: <Widget>[
            appBar(context, _scaffoldKey),
            /*SliverList(
                delegate: SliverChildListDelegate([
              Column(
                children: <Widget>[
                  sliderPopulares(),
                  titles('Categorías', titlesStyle),
                  SliderCategorias(),
                  titles('Recetas', titlesStyle),
                  //Procesamos el future del provider
                  FutureBuilder(
                    future: recetasProvider.cargarRecetas(),
                    initialData: const [],
                    builder: (BuildContext context,
                        AsyncSnapshot<List<dynamic>> snapshot) {
                      return Column(
                          children: recetasListado(context, snapshot.data!));
                    },
                  ),
                  //recetasListado(context),
                ],
              )
            ]))*/
          ],
        ));
  }
}
