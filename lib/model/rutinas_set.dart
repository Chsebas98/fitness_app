import 'package:fitness_app/model/rutina.dart';
import 'package:flutter/material.dart';

enum RutinaType { facil, medio, dificil }

String getRutinaName(RutinaType type) {
  switch (type) {
    case RutinaType.facil:
      return "Fácil";
    case RutinaType.medio:
      return "Medio";
    case RutinaType.dificil:
      return "Dificil";
    default:
      return "Todos";
  }
}

class RutinaSet {
  final String name;
  final List<Rutina> exercises;
  final String imageUrl;
  final RutinaType exerciseType;
  final Color color;

  const RutinaSet({
    required this.name,
    required this.exercises,
    required this.imageUrl,
    required this.exerciseType,
    required this.color,
  });

  String get totalDuration {
    final duration = exercises.fold(
      Duration.zero,
      (previous, element) => previous + element.duration,
    );

    return duration.inMinutes.toString();
  }
}
