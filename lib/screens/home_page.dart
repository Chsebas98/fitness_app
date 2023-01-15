import 'package:flutter/material.dart';

import '../widget/widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        body: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            buildAppBar(context),
            const ExercisesWidget(),
          ],
        ),
      );

  SliverAppBar buildAppBar(BuildContext context) => SliverAppBar(
        flexibleSpace: const FlexibleSpaceBar(background: LineChartWidget()),
        expandedHeight: MediaQuery.of(context).size.height * 0.5,
        stretch: true,
        title: const Text('Statistics'),
        centerTitle: true,
        pinned: true,
        leading: const Icon(Icons.menu),
        actions: const [
          Icon(Icons.person, size: 28),
          SizedBox(width: 12),
        ],
      );
}
