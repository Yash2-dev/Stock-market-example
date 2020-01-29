import 'package:bezier_chart/bezier_chart.dart';
import 'package:flutter/material.dart';

List sampleData = [
  {"open": 50.0, "high": 100.0, "low": 40.0, "close": 80, "volumeto": 5000.0},
  {"open": 80.0, "high": 90.0, "low": 55.0, "close": 65, "volumeto": 4000.0},
  {"open": 65.0, "high": 120.0, "low": 60.0, "close": 90, "volumeto": 7000.0},
  {"open": 90.0, "high": 95.0, "low": 85.0, "close": 80, "volumeto": 2000.0},
  {"open": 80.0, "high": 85.0, "low": 40.0, "close": 50, "volumeto": 3000.0},
  {"open": 50.0, "high": 100.0, "low": 40.0, "close": 80, "volumeto": 5000.0},
  {"open": 80.0, "high": 90.0, "low": 55.0, "close": 65, "volumeto": 4000.0},
  {"open": 65.0, "high": 120.0, "low": 60.0, "close": 90, "volumeto": 7000.0},
  {"open": 90.0, "high": 95.0, "low": 85.0, "close": 80, "volumeto": 2000.0},
  {"open": 80.0, "high": 85.0, "low": 40.0, "close": 50, "volumeto": 3000.0},
  {"open": 50.0, "high": 100.0, "low": 40.0, "close": 80, "volumeto": 5000.0},
  {"open": 80.0, "high": 90.0, "low": 55.0, "close": 65, "volumeto": 4000.0},
  {"open": 65.0, "high": 120.0, "low": 60.0, "close": 90, "volumeto": 7000.0},
  {"open": 90.0, "high": 95.0, "low": 85.0, "close": 80, "volumeto": 2000.0},
  {"open": 80.0, "high": 85.0, "low": 40.0, "close": 50, "volumeto": 3000.0},
];

class GraphData extends StatefulWidget {
  @override
  _GraphDataState createState() => _GraphDataState();
}

class _GraphDataState extends State<GraphData> {
  @override
  Widget build(BuildContext context) {
  final fromDate = DateTime(2012, 11, 22);
  final toDate = DateTime.now();

  final date1 = DateTime.now().subtract(Duration(days: 2));
  final date2 = DateTime.now().subtract(Duration(days: 3));

  final date3 = DateTime.now().subtract(Duration(days: 300));
  final date4 = DateTime.now().subtract(Duration(days: 320));

  final date5 = DateTime.now().subtract(Duration(days: 650));
  final date6 = DateTime.now().subtract(Duration(days: 652));

  return Center(
    child: Container(
      color: Colors.red,
      height: MediaQuery.of(context).size.height / 2,
      width: MediaQuery.of(context).size.width,
      child: BezierChart(
        bezierChartScale: BezierChartScale.YEARLY,
        fromDate: fromDate,
        toDate: toDate,
        selectedDate: toDate,
        series: [
          BezierLine(
            label: "Duty",
            onMissingValue: (dateTime) {
              if (dateTime.year.isEven) {
                return 20.0;
              }
              return 5.0;
            },
            data: [
              DataPoint<DateTime>(value: 10, xAxis: date1),
              DataPoint<DateTime>(value: 50, xAxis: date2),
              DataPoint<DateTime>(value: 100, xAxis: date3),
              DataPoint<DateTime>(value: 100, xAxis: date4),
              DataPoint<DateTime>(value: 40, xAxis: date5),
              DataPoint<DateTime>(value: 47, xAxis: date6),
            ],
          ),
          BezierLine(
            label: "Flight",
            lineColor: Colors.black26,
            onMissingValue: (dateTime) {
              if (dateTime.month.isEven) {
                return 10.0;
              }
              return 3.0;
            },
            data: [
              DataPoint<DateTime>(value: 20, xAxis: date1),
              DataPoint<DateTime>(value: 30, xAxis: date2),
              DataPoint<DateTime>(value: 150, xAxis: date3),
              DataPoint<DateTime>(value: 80, xAxis: date4),
              DataPoint<DateTime>(value: 45, xAxis: date5),
              DataPoint<DateTime>(value: 45, xAxis: date6),
            ],
          ),
        ],
        config: BezierChartConfig(
          verticalIndicatorStrokeWidth: 3.0,
          verticalIndicatorColor: Colors.black26,
          showVerticalIndicator: true,
          verticalIndicatorFixedPosition: false,
          backgroundGradient: LinearGradient(
            colors: [
              Colors.red[300],
              Colors.red[400],
              Colors.red[400],
              Colors.red[500],
              Colors.red,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          footerHeight: 30.0,
        ),
      ),
    ),
  );
}
}
