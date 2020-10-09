import 'package:flutter/material.dart';
import 'country.dart';
import 'track_streaming.dart';
import 'country_list_screen.dart';
import 'constant.dart';

class TabBarContainer extends StatefulWidget {
  @override
  _TabBarContainerState createState() => _TabBarContainerState();
}

class _TabBarContainerState extends State<TabBarContainer>
    with SingleTickerProviderStateMixin {
  //AnimationController _controller;
  String countyImageCode = 'globe';
  String countyNameCode = 'All';
  int tabIndex = 1;
  //PageController _pageController;

  List<Widget> listScreens;

  @override
  void initState() {
    //_controller = AnimationController(vsync: this);
    super.initState();
    //_pageController = PageController();

    listScreens = [
      CountryListScreen(resetIndex: (Country country){
        setState(() {
          tabIndex = 1;
        });
        if (country.name == 'All Countries') {
          countyImageCode = 'globe';
          countyNameCode = 'All';
        } else {
          countyImageCode = country.code;
          countyNameCode = country.name;
        }
      },),
      TrackStreaming(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: kMainBackgroundColor,
        scaffoldBackgroundColor: kMainBackgroundColor,
      ),
      home: Scaffold(
        body: listScreens[tabIndex],
        bottomNavigationBar: BottomNavigationView(),
      ),
    );
  }

  BottomAppBar BottomNavigationView() {
    return BottomAppBar(
      clipBehavior: Clip.antiAlias,
        color: Color(0xFF292B3A),
        child: Container(
         decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(20),
         ),
          height: 61,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              FlatButton(
                  onPressed: () {
                    setState(() {
                      tabIndex = 0;
                    });
                  },
                  child: Row(
                    children: [
                      Image.asset('images/$countyImageCode.png'),
                      SizedBox(width: 10,),
                      Text(countyNameCode),
                    ],
                  )
              ),
              Container(color: Colors.black, width: 2,),
              FlatButton(
                padding: EdgeInsets.all(10.0),
                onPressed: () {
                  setState(() {
                    tabIndex = 1;
                  });
                },
                child: Column(
                  children: <Widget>[
                    Text('White Lies'),
                    SizedBox(width: 10),
                    Text('Max Frost',
                      style: TextStyle(
                        color: Colors.grey
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
  }
}
