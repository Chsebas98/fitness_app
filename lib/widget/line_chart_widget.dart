import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../data/line_titles.dart';

class LineChartWidget extends StatelessWidget {
  const LineChartWidget({super.key});

  @override
  Widget build(BuildContext context) => LineChart(
        LineChartData(
          gridData: FlGridData(show: false),
          borderData: FlBorderData(show: false),
          titlesData: LineTitles.getTitleData(),
          minX: 0,
          maxX: 11,
          minY: 0,
          maxY: 8,
          lineBarsData: [
            LineChartBarData(
              spots: [
                const FlSpot(0, 2.5),
                const FlSpot(2, 2),
                const FlSpot(4, 3),
                const FlSpot(6, 2.5),
                const FlSpot(8, 4),
                const FlSpot(10, 3),
                const FlSpot(12, 4.5),
              ],
              color: Colors.white70,
              barWidth: 3,
            ),
          ],
        ),
      );
}
