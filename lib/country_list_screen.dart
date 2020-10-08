import 'package:flutter/material.dart';
import 'constant.dart';
import 'country.dart';

class CountryListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          //fontFamily: 'OpenSans',
          fontFamily: 'Helvetica',
          primaryColor: kGreyBackground,
          accentColor: kAccentColor,
          scaffoldBackgroundColor: kGreyBackground,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Scaffold(
            appBar: AppBar(
              title: Text('CHART PERFORMANCE', style: kCountryListPageTitleStyleWhite(),),
              centerTitle: true,
              backgroundColor: kMainBackgroundColor,
              leading: Image(image: AssetImage('images/wmg.png')),
              actions: [
                IconButton(icon: Icon(Icons.info, color: Colors.white,))
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
              width: 10.0,
            ),
            Text('Popular Countries', style: kCountryNameTextStyleBlack(),),
            SizedBox(
              width: 20.0,
            ),
            RaisedButton(
              textColor: Colors.white,
              color: Colors.black,
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

  // Copy Main List into New List.
  //List<String> newDataList = List.from(mainDataList);

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
                  hintText: 'Search by Country',
                  hintStyle: kCountrySearchHintStyleGrey()
              ),
              onChanged: onItemChanged,
            ),
          ),
          Divider(),
          Expanded(
              child: /*ListView(
              padding: EdgeInsets.all(12.0),
              children: newDataList.map((data) {
                return ListTile(
                  contentPadding: EdgeInsets.all(10.0),
                  leading: getFlagImage(data.code),
                  title: Text(data.name, style: kCountryNameTextStyleBlack(),),
                  onTap: ()=> print(data),);
              }).toList(),
            ),*/
              ListView.separated(
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
