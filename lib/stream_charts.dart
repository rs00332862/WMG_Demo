import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as chart;
import 'stream_tracker.dart';
import 'constant.dart';

class StreamCharts extends StatelessWidget {

  final List<StreamTracker> data;
  StreamCharts({@required this.data});

  @override
  Widget build(BuildContext context) {

    List<chart.Series<StreamTracker, DateTime>> streams = [
      chart.Series(
        id: "Sales",
        data: data,
        domainFn: (StreamTracker stream, _) => stream.time,
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
              Expanded(
                  child:chart.TimeSeriesChart(
                    streams,
                    animate: true,
                    layoutConfig: chart.LayoutConfig(leftMarginSpec: chart.MarginSpec.fixedPixel(0), topMarginSpec: chart.MarginSpec.fixedPixel(0), rightMarginSpec: chart.MarginSpec.fixedPixel(0), bottomMarginSpec: chart.MarginSpec.fixedPixel(0)),
                    // Set the default renderer to a bar renderer.
                    // This can also be one of the custom renderers of the time series chart.
                    defaultRenderer: chart.BarRendererConfig<DateTime>(),
                    // It is recommended that default interactions be turned off if using bar
                    // renderer, because the line point highlighter is the default for time
                    // series chart.
                    defaultInteractions: false,
                    // If default interactions were removed, optionally add select nearest
                    // and the domain highlighter that are typical for bar charts.
                    behaviors: [chart.SelectNearest(), chart.DomainHighlighter()],
                    domainAxis: chart.DateTimeAxisSpec(
                      tickProviderSpec: chart.DayTickProviderSpec(increments: [7]),
                      showAxisLine: false,
                      tickFormatterSpec: chart.AutoDateTimeTickFormatterSpec(
                        day: chart.TimeFormatterSpec(
                          format: 'MM/dd', transitionFormat: 'MM/dd'
                        )
                      ),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}