// import 'dart:ui';

// import 'package:flutter/material.dart';
// import 'package:fl_chart/fl_chart.dart';

// class DataStatsWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // Define some sample data for the graph
//     List<FlSpot> spots = [
//       FlSpot(1, 100), // Sample data for January
//       FlSpot(2, 150), // Sample data for February
//       FlSpot(3, 200), // Sample data for March
//       // Add more sample data as needed
//     ];

//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Data Stats'),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.search),
//             onPressed: () {
//               // Handle search action
//             },
//           ),
//         ],
//       ),
//       body: Stack(
//         children: [
//           Container(
//             decoration: BoxDecoration(
//               image: DecorationImage(
//                 image: AssetImage('assets/background_image.jpg'),
//                 fit: BoxFit.cover,
//               ),
//             ),
//             child: BackdropFilter(
//               filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
//               child: Container(
//                 color: Colors.transparent,
//               ),
//             ),
//           ),
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: [
//               Container(
//                 padding: EdgeInsets.all(16),
//                 child: Column(
//                   children: [
//                     Image.asset('assets/logo.png', height: 100),
//                     SizedBox(height: 10),
//                     Text(
//                       'My Laboratory Name',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 24,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Expanded(
//                 child: Container(
//                   padding: EdgeInsets.all(16),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.stretch,
//                     children: [
//                       Text(
//                         'Graph of Total Tests Up Till Now',
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 18,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       SizedBox(height: 10),
//                       Expanded(
//                         child: TotalTestsGraph(spots: spots, animate: true),
//                       ),
//                       SizedBox(height: 20),
//                       LastMonthStatsWidget(),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

// class TotalTestsGraph extends StatelessWidget {
//   final List<FlSpot> spots;
//   final bool animate;

//   TotalTestsGraph({required this.spots, required this.animate});

//   @override
//   Widget build(BuildContext context) {
//     return LineChart(
//       LineChartData(
//         lineBarsData: [
//           LineChartBarData(
//             spots: spots,
//             isCurved: true,
//             color: Colors.blue,
//             barWidth: 4,
//             isStrokeCapRound: true,
//             belowBarData: BarAreaData(show: false),
//           ),
//         ],
//   titlesData: FlTitlesData(
//   show: true,
// ),
// axisTitleData: FlAxisTitleData(
//   leftTitle: AxisTitle(
//     showTitle: true,
//     margin: 10,
//     reservedSize: 30,
//   ),
//   bottomTitle: AxisTitle(
//     showTitle: true,
//     margin: 10,
//     reservedSize: 30,
//   ),
// ),


//         borderData: FlBorderData(show: false),
//         minX: 0,
//         maxX: spots.length.toDouble() - 1,
//         minY: 0,
//         maxY: spots.map((spot) => spot.y).reduce((a, b) => a > b ? a : b) * 1.1,
//       ),
//     );
//   }
// }

// class LastMonthStatsWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         color: Colors.white.withOpacity(0.3),
//         borderRadius: BorderRadius.circular(20),
//       ),
//       padding: EdgeInsets.all(16),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: [
//           Text(
//             'Total Tests Last Month:',
//             style: TextStyle(
//               color: Colors.white,
//               fontSize: 16,
//             ),
//           ),
//           SizedBox(height: 10),
//           Text(
//             '200', // Sample value for total tests last month
//             style: TextStyle(
//               color: Colors.white,
//               fontSize: 24,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
