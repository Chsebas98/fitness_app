import 'package:flutter/material.dart';

import '../model/exercise_set.dart';
import 'exercise.dart';

final exerciseSets = [
  ExerciseSet(
    name: 'Torso',
    exercises: exercises1,
    imageUrl: 'assets/workout1.png',
    exerciseType: ExerciseType.low,
    color: Colors.blue.shade100.withOpacity(0.6),
  ),
  ExerciseSet(
    name: 'Abdominales',
    exercises: exercises3,
    imageUrl: 'assets/crunch.png',
    exerciseType: ExerciseType.low,
    color: Colors.green.shade100.withOpacity(0.6),
  ),
  ExerciseSet(
    name: 'Parte superior',
    exercises: exercises1,
    imageUrl: 'assets/pushup.png',
    exerciseType: ExerciseType.low,
    color: Colors.orange.shade100.withOpacity(0.6),
  ),
  ExerciseSet(
    name: 'Yoga',
    exercises: exercises2,
    imageUrl: 'assets/yoga.png',
    exerciseType: ExerciseType.low,
    color: Colors.purple.shade100.withOpacity(0.6),
  ),
  ExerciseSet(
    name: 'Cardio',
    exercises: exercises3,
    imageUrl: 'assets/workout3.png',
    exerciseType: ExerciseType.low,
    color: Colors.red.shade100.withOpacity(0.6),
  ),
  ExerciseSet(
    name: 'Extensión',
    exercises: exercises4,
    imageUrl: 'assets/workout2.png',
    exerciseType: ExerciseType.mid,
    color: Colors.pink.shade100.withOpacity(0.6),
  ),
  ExerciseSet(
    name: 'Torso',
    exercises: exercises2,
    imageUrl: 'assets/workout3.png',
    exerciseType: ExerciseType.mid,
    color: Colors.yellowAccent.shade100.withOpacity(0.6),
  ),
  ExerciseSet(
    name: 'Cardio',
    exercises: exercises3,
    imageUrl: 'assets/workout1.png',
    exerciseType: ExerciseType.mid,
    color: Colors.orange.shade100.withOpacity(0.6),
  ),
  ExerciseSet(
    name: 'Yoga',
    exercises: exercises1,
    imageUrl: 'assets/yoga.png',
    exerciseType: ExerciseType.mid,
    color: Colors.purple.shade100.withOpacity(0.6),
  ),
  ExerciseSet(
    name: 'Abdominales',
    exercises: exercises1,
    imageUrl: 'assets/crunch.png',
    exerciseType: ExerciseType.mid,
    color: Colors.blue.shade100.withOpacity(0.6),
  ),
  ExerciseSet(
    name: 'Hombros',
    exercises: exercises2,
    imageUrl: 'assets/pushup.png',
    exerciseType: ExerciseType.mid,
    color: Colors.teal.shade100.withOpacity(0.6),
  ),
  ExerciseSet(
    name: 'Acrobático',
    exercises: exercises2,
    imageUrl: 'assets/workout3.png',
    exerciseType: ExerciseType.hard,
    color: Colors.orange.shade100.withOpacity(0.6),
  ),
  ExerciseSet(
    name: 'Manos',
    exercises: exercises2,
    imageUrl: 'assets/pushup.png',
    exerciseType: ExerciseType.hard,
    color: Colors.blue.shade100.withOpacity(0.6),
  ),
  ExerciseSet(
    name: 'Abdominales',
    exercises: exercises4,
    imageUrl: 'assets/crunch.png',
    exerciseType: ExerciseType.hard,
    color: Colors.teal.shade100.withOpacity(0.6),
  ),
  ExerciseSet(
    name: 'Hombros',
    exercises: exercises1,
    imageUrl: 'assets/workout2.png',
    exerciseType: ExerciseType.hard,
    color: Colors.purple.shade100.withOpacity(0.6),
  ),
  ExerciseSet(
    name: 'Yoga',
    exercises: exercises3,
    imageUrl: 'assets/yoga.png',
    exerciseType: ExerciseType.hard,
    color: Colors.orange.shade100.withOpacity(0.6),
  ),
];
