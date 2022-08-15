
/// this one is comming soon page chart widgets



// import 'package:fl_chart/fl_chart.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';

// import 'line_chart_data.dart';

// class Chart extends StatefulWidget {
//   const Chart({super.key});

//   @override
//   State<Chart> createState() => _ChartState();
// }

// class _ChartState extends State<Chart> {
//   final List<Color> gradientColors = [
//     const Color(0xff23b6e6),
//     const Color(0xff02d39a),
//   ];

//   @override
//   Widget build(BuildContext context) => LineChart(
//         LineChartData(
//           minX: 0,
//           maxX: 11,
//           minY: 0,
//           maxY: 6,
//           titlesData: LineTitles.getTitleData(),
//           gridData: FlGridData(
//             drawHorizontalLine: false,
//             show: true,
//             getDrawingHorizontalLine: (value) {
//               return FlLine(
//                 color: const Color(0xff37434d),
//                 strokeWidth: 1,
//               );
//             },
//             drawVerticalLine: true,
//             getDrawingVerticalLine: (value) {
//               return FlLine(
//                 color: const Color(0xff37434d),
//                 strokeWidth: 1,
//               );
//             },
//           ),
//           borderData: FlBorderData(
//             show: false,
//             // border:
//             //     Border.all(color: Color.fromARGB(255, 21, 205, 80), width: 1),
//           ),
//           lineBarsData: [
//             LineChartBarData(
//               spots: [
//                 FlSpot(0, 1),
//                 FlSpot(2.6, 2),
//                 FlSpot(4.9, 4),
//                 FlSpot(6.8, 3.5),
//                 FlSpot(8, 5),
//                 FlSpot(9.5, 5),
//                 FlSpot(11, 6),
//               ],
//               dotData: FlDotData(show: true),
//               isCurved: true,
//               colors: gradientColors,
//               barWidth: 5,
//               // dotData: FlDotData(show: false),
//               belowBarData: BarAreaData(
//                 show: false,
//                 // colors: gradientColors
//                 //     .map((color) => color.withOpacity(0.3))
//                 //     .toList(),
//               ),
//             ),
//           ],
//         ),
//       );
// }
