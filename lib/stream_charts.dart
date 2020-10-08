import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as chart;
import 'stream_tracker.dart';

class StreamCharts extends StatelessWidget {

  final List<StreamTracker> data;
  StreamCharts({@required this.data});

  @override
  Widget build(BuildContext context) {

    List<chart.Series<StreamTracker, String>> streams = [
      chart.Series(
        id: "Streams",
        data: data,
        domainFn: (StreamTracker stream, _) => stream.day,
        measureFn: (StreamTracker stream, _) => stream.stream,
        colorFn: (StreamTracker stream, _) => stream.barColor,
      )
    ];
    return Container(
      height: 400,
      padding: EdgeInsets.all(20.0),
      child: Card(
        child: Column(
          children: [
            Expanded(child: chart.BarChart(streams,animate: true))
          ],
        ),
      ),
    );
  }
}
