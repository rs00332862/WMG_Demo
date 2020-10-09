import 'package:charts_flutter/flutter.dart' as chart;

class StreamTracker{
  final DateTime time;
  final int stream;
  final chart.Color barColor;

  StreamTracker({this.time,this.stream,this.barColor});
}