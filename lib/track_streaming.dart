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
      time: DateTime(2020, 9, 15),
      stream: 80,
      barColor: chart.ColorUtil.fromDartColor(Colors.blue),
    ),
    StreamTracker(
      time: DateTime(2020, 9, 16),
      stream: 80,
      barColor: chart.ColorUtil.fromDartColor(Colors.blue),
    ),
    StreamTracker(
      time: DateTime(2020, 9, 17),
      stream: 80,
      barColor: chart.ColorUtil.fromDartColor(Colors.blue),
    ),
    StreamTracker(
      time: DateTime(2020, 9, 18),
      stream: 90,
      barColor: chart.ColorUtil.fromDartColor(Colors.blue),
    ),
    StreamTracker(
      time: DateTime(2020, 9, 19),
      stream: 100,
      barColor: chart.ColorUtil.fromDartColor(Colors.blue),
    ),
    StreamTracker(
      time: DateTime(2020, 9, 20),
      stream: 110,
      barColor: chart.ColorUtil.fromDartColor(Colors.blue),
    ),
    StreamTracker(
      time: DateTime(2020, 9, 21),
      stream: 120,
      barColor: chart.ColorUtil.fromDartColor(Colors.blue),
    ),
    StreamTracker(
      time: DateTime(2020, 9, 22),
      stream: 130,
      barColor: chart.ColorUtil.fromDartColor(Colors.blue),
    ),
    StreamTracker(
      time: DateTime(2020, 9, 23),
      stream: 140,
      barColor: chart.ColorUtil.fromDartColor(Colors.blue),
    ),
    StreamTracker(
      time: DateTime(2020, 9, 24),
      stream: 130,
      barColor: chart.ColorUtil.fromDartColor(Colors.blue),
    ),
    StreamTracker(
      time: DateTime(2020, 9, 25),
      stream: 110,
      barColor: chart.ColorUtil.fromDartColor(Colors.blue),
    ),
    StreamTracker(
      time: DateTime(2020, 9, 26),
      stream: 120,
      barColor: chart.ColorUtil.fromDartColor(Colors.blue),
    ),
    StreamTracker(
      time: DateTime(2020, 9, 27),
      stream: 120,
      barColor: chart.ColorUtil.fromDartColor(Colors.blue),
    ),
    StreamTracker(
      time: DateTime(2020, 9, 28),
      stream: 110,
      barColor: chart.ColorUtil.fromDartColor(Colors.blue),
    ),
    StreamTracker(
      time: DateTime(2020, 9, 29),
      stream: 112,
      barColor: chart.ColorUtil.fromDartColor(Colors.blue),
    ),
    StreamTracker(
      time: DateTime(2020, 9, 30),
      stream: 90,
      barColor: chart.ColorUtil.fromDartColor(Colors.blue),
    ),
    StreamTracker(
      time: DateTime(2020, 10, 1),
      stream: 70,
      barColor: chart.ColorUtil.fromDartColor(Colors.blue),
    ),
    StreamTracker(
      time: DateTime(2020, 10, 2),
      stream: 80,
      barColor: chart.ColorUtil.fromDartColor(Colors.blue),
    ),
    StreamTracker(
      time: DateTime(2020, 10, 3),
      stream: 90,
      barColor: chart.ColorUtil.fromDartColor(Colors.blue),
    ),
    StreamTracker(
      time: DateTime(2020, 10, 4),
      stream: 100,
      barColor: chart.ColorUtil.fromDartColor(Colors.blueAccent),
    ),
    StreamTracker(
      time: DateTime(2020, 10, 5),
      stream: 110,
      barColor: chart.ColorUtil.fromDartColor(kBlueBoldText),
    ),
    StreamTracker(
      time: DateTime(2020, 10, 6),
      stream: 120,
      barColor: chart.ColorUtil.fromDartColor(kBlueBoldText),
    ),
    StreamTracker(
      time: DateTime(2020, 10, 7),
      stream: 20,
      barColor: chart.ColorUtil.fromDartColor(Colors.grey),
    ),
    StreamTracker(
      time: DateTime(2020, 10, 8),
      stream: 15,
      barColor: chart.ColorUtil.fromDartColor(Colors.grey),
    ),
    StreamTracker(
      time: DateTime(2020, 10, 9),
      stream: 10,
      barColor: chart.ColorUtil.fromDartColor(Colors.grey),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainBackgroundColor,
      appBar: AppBar(
        backgroundColor: kMainBackgroundColor,
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
            icon: Image(image: AssetImage('images/info.png')),
            onPressed: null,
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(80, 10, 80, 0),
            child: Container(
                child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        side: BorderSide(color: Colors.white)),
                    onPressed: () {},
                    textColor: Colors.white,
                    color: Colors.transparent,
                    splashColor: kCountryListPageBackgroundGrey,
                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                      child: TextField(
                        enabled: false,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                            suffixIcon: Image.asset('images/drop-down.png'),
                            border: InputBorder.none,
                            hintText: 'All Services',
                            enabled: false,
                            hintStyle: kPageBodyTextBoldWhite()),
                      ),
                    )
                )
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Flexible(
            child: ListView(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    '53,628,306',
                    style: kBlueBoldTextStyle(),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Stream Release To Date',
                    style: grayBoldTextStyle(),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    '32,441',
                    style: kBlueBoldTextStyle(),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Stream + Sources 9/25 - 10/1',
                    style: grayBoldTextStyle(),
                  ),
                ),
                SizedBox(
                  height: 10.0,
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

  BottomRowCell({@required this.labelText, @required this.labelValue});

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
                color: labelValue == '---' ? Colors.grey : Colors.white,
                fontFamily: 'Helvetica',
                fontSize: 18.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              labelValue,
              style: TextStyle(
                color: labelValue == '---' ? Colors.grey : Colors.white,
                fontFamily: 'Helvetica',
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
