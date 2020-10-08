import 'package:charts_flutter/flutter.dart' as chart;
import 'package:flutter/foundation.dart';

class StreamTracker{
  final String day;
  final int stream;
  final chart.Color barColor;

  StreamTracker({this.day,this.stream,this.barColor});
}