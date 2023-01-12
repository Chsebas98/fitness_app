import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [buildAppBar(context)],
      ),
    );
  }


  SliverAppBar buildAppBar(BuildContext context)=> SliverAppBar(
    expandedHeight: MediaQuery.of(context).size.height*0.5,
    title: Text("Estadisticas"),
    leading: Icon (Icons.menu),
    actions: [
      Icon(Icons.person,size:28),
      SizedBox(width: 12)
    ],
  )

}
