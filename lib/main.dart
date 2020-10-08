import 'package:flutter/material.dart';
import 'track_streaming.dart';
import 'tab_bar_container.dart';
import 'constant.dart';

void main() {
  runApp(WMGPoc());
}

class WMGPoc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: kMainBackgroundColor,
        scaffoldBackgroundColor: kMainBackgroundColor,
      ),
      home: TabBarContainer(),
    );
  }
}


