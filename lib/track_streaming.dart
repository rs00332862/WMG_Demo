import 'package:flutter/material.dart';
import 'stream_tracker.dart';
import 'package:charts_flutter/flutter.dart' as chart;
import 'stream_charts.dart';
import 'styling.dart';
import 'constant.dart';

class TrackStreaming extends StatefulWidget {
  @override
  _TrackStreamingState createState() => _TrackStreamingState();
}

String currentServiceValue;

class _TrackStreamingState extends State<TrackStreaming> {
  final List<StreamTracker> data = [
    StreamTracker(
      day: "9/11",
      stream: 2000,
      barColor: chart.ColorUtil.fromDartColor(Colors.blue),
    ),
    StreamTracker(
      day: "9/12",
      stream: 3000,
      barColor: chart.ColorUtil.fromDartColor(Colors.blue),
    ),
    StreamTracker(
      day: "9/13",
      stream: 2100,
      barColor: chart.ColorUtil.fromDartColor(Colors.blue),
    ),
    StreamTracker(
      day: "9/14",
      stream: 2300,
      barColor: chart.ColorUtil.fromDartColor(Colors.blue),
    ),
    StreamTracker(
      day: "9/15",
      stream: 900,
      barColor: chart.ColorUtil.fromDartColor(Colors.blue),
    ),
    StreamTracker(
      day: "9/16",
      stream: 500,
      barColor: chart.ColorUtil.fromDartColor(Colors.blue),
    ),
    StreamTracker(
      day: "9/17",
      stream: 4500,
      barColor: chart.ColorUtil.fromDartColor(Colors.blue),
    ),
    StreamTracker(
      day: "9/18",
      stream: 280,
      barColor: chart.ColorUtil.fromDartColor(Colors.blue),
    ),
    StreamTracker(
      day: "9/19",
      stream: 180,
      barColor: chart.ColorUtil.fromDartColor(Colors.blue),
    ),
    StreamTracker(
      day: "9/19",
      stream: 200,
      barColor: chart.ColorUtil.fromDartColor(Colors.blue),
    ),
    StreamTracker(
      day: "9/19",
      stream: 100,
      barColor: chart.ColorUtil.fromDartColor(Colors.blue),
    ),
    StreamTracker(
      day: "9/19",
      stream: 165,
      barColor: chart.ColorUtil.fromDartColor(Colors.blue),
    ),
    StreamTracker(
      day: "9/19",
      stream: 25,
      barColor: chart.ColorUtil.fromDartColor(Colors.grey),
    ),
    StreamTracker(
      day: "9/20",
      stream: 35,
      barColor: chart.ColorUtil.fromDartColor(Colors.grey),
    ),
    StreamTracker(
      day: "9/21",
      stream: 20,
      barColor: chart.ColorUtil.fromDartColor(Colors.grey),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset('images/wmg.png'),
        centerTitle: false,
        title: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'White Lies',
                style: TextStyle(
                  color: Color(0xFF807F8E),
                  fontWeight: FontWeight.w800,
                  fontSize: 18,
                ),
              ),
              Text(
                'TRACK STREAMING',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
              icon: const Icon(
                Icons.info,
                color: Colors.white,
              ),
              onPressed: null)
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(80, 20, 80, 0),
            child: Expanded(child: currentServiceSelection()),
          ),
          SizedBox(
            height: 10.0,
          ),
          SafeArea(
            bottom: false,
            child: SizedBox(
              height: MediaQuery.of(context).size.height - 194 - 95,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      '53,628,306',
                      style: kBlueBoldTextStyle(),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      'Stream Release To Date',
                      style: grayBoldTextStyle(),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      '32,441',
                      style: kBlueBoldTextStyle(),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                      child: Text(
                        'Stream + Sources 9/25 - 10/1',
                        style: grayBoldTextStyle(),
                      ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: StreamCharts(
                      data: data,
                    ),
                  ),
                  BottomRowCell(labelText: 'Library', labelValue: '16,140'),
                  BottomRowCell(labelText: 'Radio', labelValue: '13,250'),
                  BottomRowCell(labelText: 'Playlist', labelValue: '6,140'),
                  BottomRowCell(labelText: 'Search', labelValue: '5,400'),
                  BottomRowCell(labelText: 'Other', labelValue: '1,140'),
                  BottomRowCell(labelText: 'Na', labelValue: '890'),
                  BottomRowCell(labelText: 'Charts', labelValue: '0'),
                  BottomRowCell(labelText: 'Flow', labelValue: '10'),
                  BottomRowCell(labelText: 'Referal', labelValue: '---'),
                  BottomRowCell(labelText: 'Paid', labelValue: '---'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }





  Widget currentServiceSelection() {
    return DropdownButtonFormField<String>(
      items: <String>['One', 'Two', 'Free', 'Four']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      hint: Text("All Services"),
      value: currentServiceValue,
      autovalidate: true,
      decoration: Styling.boxStyling,
      onChanged: (String newValue) {
        setState(() {
          currentServiceValue = newValue;
        });
      },
    );
  }
}

class BottomRowCell extends StatelessWidget {

  final String labelText;
  final String labelValue;
  BottomRowCell({@required this.labelText,@required this.labelValue});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              labelText,
              style: TextStyle(
                color: labelValue == '---'? Colors.grey : Colors.white,
                fontFamily: 'ProximaNova-Regular',
                fontSize: 18.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              labelValue,
              style: TextStyle(
                color: labelValue == '---'? Colors.grey : Colors.white,
                fontFamily: 'ProximaNova-Regular',
                fontSize: 18.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}