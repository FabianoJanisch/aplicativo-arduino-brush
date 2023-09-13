import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

// Define data structure for a bar group
class DataItem {
  int x;
  double y1;
  double y2;
  double y3;
  DataItem(
      {required this.x, required this.y1, required this.y2, required this.y3});
}

class Pagechart extends StatelessWidget {
  const Pagechart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Porta-Escova AIOT'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: BarChart(
          BarChartData(
            titlesData: FlTitlesData(
              show: true,
              bottomTitles: AxisTitles(
                axisNameWidget: const Text('Dias da semana'),
                sideTitles: SideTitles(
                  showTitles: true,
                  reservedSize: 30,
                  interval: 1,
                  getTitlesWidget: (value, meta) {
                    String text = '';
                    switch (value.toInt()) {
                      case 1:
                        text = 'Segunda';
                        break;
                      case 2:
                        text = 'Terça';
                        break;
                      case 3:
                        text = 'Quarta';
                        break;
                      case 4:
                        text = 'Quinta';
                        break;
                      case 5:
                        text = 'Sexta';
                        break;
                      case 6:
                        text = 'Sábado';
                        break;
                      case 7:
                        text = 'Domingo';
                        break;
                    }
                    return Text(text);
                  },
                ),
              ),
              leftTitles: const AxisTitles(
                axisNameWidget: Text('Quantidade de escovação diária'),
                sideTitles: SideTitles(
                  showTitles: true,
                  reservedSize: 40,
                ),
              ),
            ),
            borderData: FlBorderData(
                border: const Border(
              top: BorderSide.none,
              right: BorderSide.none,
              left: BorderSide(width: 3),
              bottom: BorderSide(width: 3),
            )),
            groupsSpace: 10,
            barGroups: [
              // Segunda
              BarChartGroupData(
                x: 1,
                barRods: [
                  BarChartRodData(
                    fromY: 0,
                    toY: 4,
                    width: 10,
                    color: Colors.amber,
                    rodStackItems: [
                      BarChartRodStackItem(0, 2, Colors.purple),
                      BarChartRodStackItem(2, 3, Colors.green),
                      BarChartRodStackItem(
                          3, 4, const Color.fromARGB(223, 17, 16, 16)),
                    ],
                  ),
                ],
              ),
              // Terça
              BarChartGroupData(
                x: 2,
                barRods: [
                  BarChartRodData(
                    fromY: 0,
                    toY: 3,
                    width: 15,
                    color: Colors.amber,
                    rodStackItems: [
                      BarChartRodStackItem(0, 1, Colors.purple),
                      BarChartRodStackItem(0, 0, Colors.green),
                      BarChartRodStackItem(
                          1, 3, const Color.fromARGB(223, 17, 16, 16)),
                    ],
                  ),
                ],
              ),
              // Quarta
              BarChartGroupData(
                x: 3,
                barRods: [
                  BarChartRodData(
                    fromY: 0,
                    toY: 4,
                    width: 15,
                    color: Colors.amber,
                    rodStackItems: [
                      BarChartRodStackItem(0, 1, Colors.purple),
                      BarChartRodStackItem(1, 3, Colors.green),
                      BarChartRodStackItem(
                          3, 4, const Color.fromARGB(223, 17, 16, 16)),
                    ],
                  ),
                ],
              ),
              // Quinta
              BarChartGroupData(
                x: 4,
                barRods: [
                  BarChartRodData(
                    fromY: 0,
                    toY: 2,
                    width: 15,
                    color: Colors.amber,
                    rodStackItems: [
                      BarChartRodStackItem(0, 1, Colors.purple),
                      BarChartRodStackItem(0, 0, Colors.green),
                      BarChartRodStackItem(
                          1, 2, const Color.fromARGB(223, 17, 16, 16)),
                    ],
                  ),
                ],
              ),
              // Sexta
              BarChartGroupData(
                x: 5,
                barRods: [
                  BarChartRodData(
                    fromY: 0,
                    toY: 5,
                    width: 15,
                    color: Colors.amber,
                    rodStackItems: [
                      BarChartRodStackItem(0, 2, Colors.purple),
                      BarChartRodStackItem(2, 4, Colors.green),
                      BarChartRodStackItem(
                          4, 5, const Color.fromARGB(223, 17, 16, 16)),
                    ],
                  ),
                ],
              ),
              // Sábado
              BarChartGroupData(
                x: 6,
                barRods: [
                  BarChartRodData(
                    fromY: 0,
                    toY: 2,
                    width: 15,
                    color: Colors.amber,
                    rodStackItems: [
                      BarChartRodStackItem(0, 0, Colors.purple),
                      BarChartRodStackItem(0, 0, Colors.green),
                      BarChartRodStackItem(
                          0, 2, const Color.fromARGB(223, 17, 16, 16)),
                    ],
                  ),
                ],
              ),
              // Domingo
              BarChartGroupData(
                x: 7,
                barRods: [
                  BarChartRodData(
                    fromY: 0,
                    toY: 2,
                    width: 15,
                    color: Colors.amber,
                    rodStackItems: [
                      BarChartRodStackItem(0, 0, Colors.purple),
                      BarChartRodStackItem(0, 1, Colors.green),
                      BarChartRodStackItem(
                          1, 2, const Color.fromARGB(223, 17, 16, 16)),
                    ],
                  ),
                ],
              ),
            ],
          ),
          swapAnimationCurve: Curves.decelerate,
        ),
      ),
    );
  }
}
