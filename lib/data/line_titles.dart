import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineTitles {
  static getTitleData() {
    return FlTitlesData(
        show: true,
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 30,
            getTitlesWidget: (value, meta) {
              value = value % 14;
              switch (value.toInt()) {
                case 1:
                  return const Text(
                    "LUN",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  );
                case 4:
                  return const Text(
                    "MAR",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  );
                case 7:
                  return const Text(
                    "MIE",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  );
                case 10:
                  return const Text(
                    "JUE",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  );
                default:
                  return const Text("");
              }
            },
          ),
        ),
        leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
        topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
        rightTitles: AxisTitles(
            drawBehindEverything: true,
            sideTitles: SideTitles(
              showTitles: true,
              getTitlesWidget: (value, meta) {
                switch (value.toInt()) {
                  case 1:
                    return Container(
                      margin: const EdgeInsets.only(bottom: 0),
                      child: const Text(
                        "100",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    );
                  case 2:
                    return Container(
                      margin: const EdgeInsets.only(bottom: 20),
                      child: const Text(
                        "300",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    );
                  case 3:
                    return Container(
                      margin: const EdgeInsets.only(bottom: 40),
                      child: const Text(
                        "500",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    );

                  case 5:
                    return Container(
                      margin: const EdgeInsets.only(bottom: 60),
                      child: const Text(
                        "900",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    );
                  default:
                    return const Text("");
                }
              },
            )));
  }
}
