import 'package:flutter/material.dart';
import '../data/exercise_sets.dart';
import '../model/exercise_set.dart';
import 'exercise_set_widget.dart';

class ExercisesWidget extends StatelessWidget {
  final ExerciseType selectedType = ExerciseType.low;

  const ExercisesWidget({super.key});

  @override
  Widget build(BuildContext context) => SliverPadding(
        padding: const EdgeInsets.all(16),
        sliver: SliverList(
          delegate: SliverChildListDelegate(
            [
              const SizedBox(height: 8),
              const Center(
                child: Text(
                  'EJERCICIOS',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
              ),
              const SizedBox(height: 8),
              buildDifficultyLevel(),
              const SizedBox(height: 8),
              buildWorkouts(),
            ],
          ),
        ),
      );

  Widget buildWorkouts() => GestureDetector(
        child: Column(
          children: exerciseSets
              .where((element) => element.exerciseType == selectedType)
              .map(
                (exerciseSet) => Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: ExerciseSetWidget(exerciseSet: exerciseSet)),
              )
              .toList(),
        ),
      );

  Widget buildDifficultyLevel() => Row(
        children: ExerciseType.values.map(
          (type) {
            final name = getExerciseName(type);
            final fontWeight =
                selectedType == type ? FontWeight.bold : FontWeight.normal;

            return Expanded(
              child: Center(
                child: GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Text(
                      name,
                      style: TextStyle(fontWeight: fontWeight, fontSize: 16),
                    ),
                  ),
                ),
              ),
            );
          },
        ).toList(),
      );
}
