import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class Graphique extends StatefulWidget {
  const Graphique({super.key});

  @override
  State<Graphique> createState() => _GraphiqueState();
}

class _GraphiqueState extends State<Graphique> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        // Centrage du contenu principal
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // Centrage vertical
            crossAxisAlignment: CrossAxisAlignment.center,
            // Centrage horizontal
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 250,
                  decoration: const BoxDecoration(
                    border: Border.symmetric(
                        horizontal: BorderSide(width: 2),
                        vertical: BorderSide(width: 2)),
                  ),
                  child: LineChart(
                    LineChartData(
                      gridData: const FlGridData(show: false),
                      titlesData: const FlTitlesData(show: false),
                      borderData: FlBorderData(show: false),
                      minX: 0,
                      maxX: 7,
                      minY: 0,
                      maxY: 6,
                      lineBarsData: [
                        LineChartBarData(
                          spots: const [
                            FlSpot(0, 3),
                            FlSpot(1, 1),
                            FlSpot(2, 4),
                            FlSpot(3, 3),
                            FlSpot(4, 5),
                            FlSpot(5, 2),
                            FlSpot(6, 4),
                            FlSpot(7, 4),
                          ],
                          isCurved: true,
                          color: Colors.blue,
                          barWidth: 3,
                          isStrokeCapRound: true,
                          dotData: const FlDotData(show: false),
                          belowBarData: BarAreaData(
                            show: true,
                            color: Colors.blue.withOpacity(0.3),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 250,
                  child: LineChart(
                    LineChartData(
                      gridData: FlGridData(
                        show: true,
                        drawVerticalLine: true,
                        horizontalInterval: 10,
                        verticalInterval: 1,
                        getDrawingHorizontalLine: (value) {
                          return const FlLine(
                            color: Colors.grey,
                            strokeWidth: 1,
                          );
                        },
                        getDrawingVerticalLine: (value) {
                          return const FlLine(
                            color: Colors.grey, // Couleur des lignes verticales
                            strokeWidth: 1,
                          );
                        },
                      ),
                      titlesData: FlTitlesData(
                        show: true,
                        rightTitles: const AxisTitles(
                          sideTitles: SideTitles(showTitles: false),
                        ),
                        topTitles: const AxisTitles(
                          sideTitles: SideTitles(showTitles: false),
                        ),
                        bottomTitles: AxisTitles(
                          sideTitles: SideTitles(
                            showTitles: true,
                            reservedSize: 32,
                            interval: 1,
                            getTitlesWidget: (value, meta) {
                              return Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Text(
                                  value.toInt().toString(),
                                ),
                              );
                            },
                          ),
                        ),
                        leftTitles: AxisTitles(
                          sideTitles: SideTitles(
                            showTitles: true,
                            reservedSize: 40,
                            interval: 10,
                            getTitlesWidget: (value, meta) {
                              return Text(
                                value.toInt().toString(),
                                style: const TextStyle(
                                  color: Colors.black,
                                  // Couleur du texte des titres gauche
                                  fontSize: 12,
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                      borderData: FlBorderData(
                        show: true,
                        border: Border.all(
                          color: Colors.blueAccent,
                          // Couleur de la bordure du graphique
                          width: 2,
                        ),
                      ),
                      minX: 0,
                      maxX: 10,
                      minY: 0,
                      maxY: 100,
                      lineBarsData: [
                        LineChartBarData(
                          spots: [
                            const FlSpot(0, 10),
                            const FlSpot(1, 40),
                            const FlSpot(2, 30),
                            const FlSpot(3, 60),
                            const FlSpot(4, 50),
                            const FlSpot(5, 70),
                            const FlSpot(6, 90),
                          ],
                          isCurved: true,
                          color: Colors.green,
                          // Couleur de la ligne du graphique
                          barWidth: 3,
                          isStrokeCapRound: true,
                          dotData: const FlDotData(show: true),
                          belowBarData: BarAreaData(
                            show: true,
                            color: Colors.blue.withOpacity(0.3),
                          ),
                        ),
                      ],
                    ),
                    // swapAnimationDuration: const Duration(milliseconds: 150),
                    // an: Curves.linear,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 250,
                  decoration: const BoxDecoration(
                    border: Border.symmetric(
                        horizontal: BorderSide(width: 2),
                        vertical: BorderSide(width: 2)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 250,
                  decoration: const BoxDecoration(
                    border: Border.symmetric(
                        horizontal: BorderSide(width: 2),
                        vertical: BorderSide(width: 2)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
