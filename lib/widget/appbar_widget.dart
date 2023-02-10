import 'package:flutter/material.dart';

Widget appBar(BuildContext context, GlobalKey<ScaffoldState> key) {
  return SliverAppBar(
    backgroundColor: Colors.black,
    floating: false,
    leading: GestureDetector(
      onTap: () {
        key.currentState?.openDrawer();
      },
      child: Container(
          padding: const EdgeInsets.all(15.0), child: const Icon(Icons.menu)),
    ),
    actions: <Widget>[
      Container(
          padding: const EdgeInsets.all(15.0),
          child: IconButton(
              icon: const Icon(
                Icons.person_sharp,
                color: Color.fromRGBO(154, 221, 44, 1),
                size: 25.0,
              ),
              onPressed: () {
                //showSearch(context: context, delegate: RecetasSearchDelegate());
              }))
    ],
  );
}
