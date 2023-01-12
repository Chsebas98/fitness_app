import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineTitles {
  static getTitleData() {
    const style = TextStyle(
      color: Colors.white70,
      fontWeight: FontWeight.bold,
      fontSize: 16,
    );

    return FlTitlesData(
        show: true,
        bottomTitles: MyBottomTitles(
          showTitles: true,
          reservedSize: 30,
          getTextStyles: (_) => style,
          getTitles: (value) {
            value = value % 14;

            switch (value.toInt()) {
              case 1:
                return 'MON';
              case 4:
                return 'THU';
              case 7:
                return 'SAT';
              case 10:
                return 'TUE';
            }
            return '';
          },
          margin: 8,
        ),
        leftTitles: MyLeftTitles(showTitles: false),
        rightTitles: MyRightTitles(
            showTitles: true,
            getTextStyles: (_) => style,
            getTitles: (value) {
              switch (value.toInt()) {
                case 1:
                  return '100';
                case 2:
                  return '300';
                case 3:
                  return '500';
              }
              return '';
            },
            reservedSize: 40,
            margin: 24));
  }
}

class MyBottomTitles extends AxisTitles {
  final bool showTitles;
  final double reservedSize;
  final TextStyle Function(double) getTextStyles;
  final String Function(double) getTitles;
  final double margin;

  MyBottomTitles({
    this.showTitles = true,
    this.reservedSize = 30,
    required this.getTextStyles,
    required this.getTitles,
    this.margin = 8,
  });

  TextStyle getTextStyle(double value) {
    return getTextStyles(value);
  }

  String getTitle(double value) {
    return getTitles(value);
  }

  bool shouldRender() {
    return showTitles;
  }
}

class MyLeftTitles extends AxisTitles {
  final bool showTitles;
  MyLeftTitles({this.showTitles = false});

  bool shouldRender() {
    return showTitles;
  }
}

class MyRightTitles extends AxisTitles {
  final bool showTitles;
  final double reservedSize;
  final TextStyle Function(double) getTextStyles;
  final String Function(double) getTitles;
  final double margin;

  MyRightTitles({
    this.showTitles = true,
    this.reservedSize = 30,
    required this.getTextStyles,
    required this.getTitles,
    this.margin = 8,
  });

  TextStyle getTextStyle(double value) {
    return getTextStyles(value);
  }

  String getTitle(double value) {
    return getTitles(value);
  }

  bool shouldRender() {
    return showTitles;
  }
}
