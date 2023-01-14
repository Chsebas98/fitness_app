import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: <Widget>[
          buildAppBar(context),
          SliverFixedExtentList(
            itemExtent: 50.0,
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                    alignment: Alignment.center, child: ListaRutinas());
              },
              childCount: 10,
            ),
          )
        ],
      ),
    );
  }

  SliverAppBar buildAppBar(BuildContext context) => SliverAppBar(
        flexibleSpace: const FlexibleSpaceBar(background: LineChartWidget()),
        stretch: true,
        expandedHeight: MediaQuery.of(context).size.height * 0.5,
        pinned: true,
        centerTitle: true,
        title: const Text("Estadisticas"),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.person, size: 28), SizedBox(width: 12)],
      );
}
