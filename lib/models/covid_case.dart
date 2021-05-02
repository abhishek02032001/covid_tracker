import 'package:charts_flutter/flutter.dart' as charts;

class CovidCase {
  final String date;
  final int cases;
  final charts.Color barColor;

  CovidCase({this.date, this.cases, this.barColor});
}
