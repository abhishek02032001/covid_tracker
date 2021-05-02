import 'package:covid_tracker/models/covid_case.dart';
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class CovidCaseChart extends StatelessWidget {
  final List<CovidCase> data;

  const CovidCaseChart({Key key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<charts.Series<CovidCase, String>> series = [
      charts.Series(
        id: "Covid Cases",
        data: data,
        domainFn: (CovidCase series, _) => series.date,
        measureFn: (CovidCase series, _) => series.cases,
        colorFn: (CovidCase series, _) => series.barColor,
      )
    ];
    return charts.BarChart(
      series,
      animate: true,
    );
  }
}
