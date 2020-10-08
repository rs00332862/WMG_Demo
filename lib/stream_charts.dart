import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as chart;
import 'stream_tracker.dart';
import 'constant.dart';

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
      decoration: BoxDecoration(
        color: kMainBackgroundColor,
      ),
      height: 400,
      padding: EdgeInsets.all(20.0),
      child: Card(
        color: kMainBackgroundColor,
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('images/testing_dots_Bg.png',),
            ),
          ),
          child: Column(
            children: [
              Expanded(child:
              chart.BarChart(
                streams,
                animate: true,
                domainAxis: chart.OrdinalAxisSpec(
                  showAxisLine: false,
                  renderSpec: chart.SmallTickRendererSpec(
                      minimumPaddingBetweenLabelsPx: 0,

                      labelStyle: chart.TextStyleSpec(
                        color: chart.MaterialPalette.white,
                        fontSize: 15,
                      )
                  ),
                ),
                primaryMeasureAxis: chart.NumericAxisSpec(renderSpec: chart.NoneRenderSpec()),

              ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
