// import 'package:fl_chart/fl_chart.dart';
// import 'package:flutter/material.dart';

// class LineTitles {
//   static getTitleData() => FlTitlesData(
//         show: true,
//         bottomTitles: SideTitles(
//           showTitles: true,
//           reservedSize: 35,
//           getTextStyles: (value) => const TextStyle(
//             color: Color(0xff68737d),
//             fontWeight: FontWeight.bold,
//             fontSize: 12,
//           ),
//           getTitles: (value) {
//             switch (value.toInt()) {
//               case 2:
//                 return 'FEB';
//               case 5:
//                 return 'MAR';
//               case 8:
//                 return 'APR';
//               case 10:
//                 return 'MAY';
//             }
//             return '';
//           },
//           margin: 3,
//         ),
//         leftTitles: SideTitles(
//           showTitles: false,
//           getTextStyles: (value) => const TextStyle(
//             color: Color(0xff67727d),
//             fontWeight: FontWeight.bold,
//             fontSize: 15,
//           ),
//           getTitles: (value) {
//             switch (value.toInt()) {
//               case 1:
//                 return '0';
//               case 3:
//                 return '30k';
//               case 5:
//                 return '50k';
//             }
//             return '';
//           },
//           reservedSize: 35,
//           margin: 12,
//         ),
//       );
// }
