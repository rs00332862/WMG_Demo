import 'package:flutter/material.dart';
import 'constant.dart';
import 'country.dart';
import 'package:page_transition/page_transition.dart';
import 'track_streaming.dart';

class CountryListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          fontFamily: 'Helvetica',
          primaryColor: kCountryListPageBackgroundGrey,
          accentColor: kAccentColor,
          scaffoldBackgroundColor: kGreyBackground,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Scaffold(
            appBar: AppBar(
              title: Text('TRACK STREAMING', style: kCountryListPageTitleStyleWhite(),),
              centerTitle: true,
              backgroundColor: kCountryListPageAppBarBackground,
              leading: Image(image: AssetImage('images/wmg.png')),
              actions: [
                IconButton(
                  icon: Image(image: AssetImage('images/info.png')), onPressed: null,)
              ],
            ),
            body: getListViewPage()
        )
    );
  }

  Widget getListViewPage() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 40.0),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 20.0,
            ),
            Text('Popular Countries', style: kCountryNameTextStyleBlack(),),
            SizedBox(
              width: 20.0,
            ),
            RaisedButton(
              textColor: Colors.white,
              color: kCountryListPageAppBarBackground,
              child: Text("Last Week"),
              onPressed: () {},
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0),
              ),
            ),
          ],
        ),
        Expanded(
          child: ListSearch(),
        )
      ],
    );
  }
}

class ListSearch extends StatefulWidget {
  ListSearchState createState() => ListSearchState();
}

class ListSearchState extends State<ListSearch> {
  int itemSelected = -1;
  TextEditingController _textController = TextEditingController();

  buttonTapped(){
    print('Button Tapped');
    Navigator.push(context, PageTransition(type: PageTransitionType.topToBottom, child: TrackStreaming()));
  }

  static List<Country> countryList = [
    Country(
      name: "All Countries",
      code: "zz",
    ),
    Country(
      name: "United States",
      code: "USA",
    ),
    Country(
      name: "United Kingdom",
      code: "UK",
    ),
    Country(
      name: "Canada",
      code: "Can",
    ),
    Country(
      name: "Germany",
      code: "Gr",
    ),
    Country(
      name: "Russian Federation",
      code: "Rsu",
    ),
    Country(
      name: "France",
      code: "Fra",
    ),
  ];

  List<Country> newDataList = List.from(countryList);

  onItemChanged(String value) {
    setState(() {
      newDataList = countryList
          .where((string) => string.name.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  Widget getFlagImage(String code) {
    if(code == 'zz') {
      return Container(
        child: Image.asset('images/globe.png'),
        width: 50.0,
        height: 50.0,
      );
    }
    else {
      return Container(
        child: Image.asset('images/${code}.png'),
        width: 50.0,
        height: 50.0,
      );
    }

  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Divider(),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: TextField(
              controller: _textController,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  border: InputBorder.none,
                  hintText: 'Search by Country',
                  hintStyle: kCountrySearchHintStyleGrey()
              ),
              onChanged: onItemChanged,
            ),
          ),
          Divider(),
          Expanded(
              child: ListView.separated(
                itemCount: newDataList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    //contentPadding: EdgeInsets.all(10.0),
                    leading: getFlagImage(newDataList[index].code),
                    title: Text(newDataList[index].name, style: kCountryNameTextStyleBlack(),),
                    trailing: itemSelected == index ? Icon(Icons.check, color: Colors.blue,) : null,
                    onTap: () {
                      setState(() {
                        itemSelected = index;
                        buttonTapped();
                      });
                    },
                  );
                },
                separatorBuilder: (context, index) {
                  return Divider();
                },
              )
          )
        ],
      ),
    );
  }
}
