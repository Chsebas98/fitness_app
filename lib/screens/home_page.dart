import 'package:flutter/material.dart';

import '../widget/exercises_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          ExercisesWidget(),
        ],
      ),
    );
  }
}
