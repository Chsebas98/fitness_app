import 'package:flutter/material.dart';

import '../widget/widget.dart';

class HomeScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: menuLateral(context),
      key: _scaffoldKey,
      body: const CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          ExercisesWidget(),
        ],
      ),
    );
  }
}
