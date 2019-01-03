import 'package:flutter/material.dart';
import 'test_section.dart';
import 'row_card.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Minimal Clean UI',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Minimal Clean UI'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
         _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text('EXPLORE',
        style: TextStyle(
          fontFamily: 'Montserrat',
          fontSize: 17.0,
          color: Colors.black
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.menu),
          color: Colors.black,
          iconSize: 17.0,
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            color: Colors.black,
            iconSize: 17.0,
            onPressed: () {},
          ),
        ]
      ),
      body: ListView(
        padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
        children: <Widget>[
          Container(
            height: 125.0,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.all(10.0),
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      height: 70.0,
                      width: 70.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35.0),
                        color: Colors.orange
                      ),
                      child: IconButton(
                          icon: Icon(Icons.add),
                          color: Colors.white,
                          onPressed: () {},
                      )
                    ),
                    SizedBox(height: 7.0),
                    Text('Add To',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600
                      ))
                  ],
                ),
                SizedBox(width: 25.0),
                listItem('assets/images/chris.jpg', 'Chris', true),
                SizedBox(width: 25.0),
                listItem('assets/images/hugh.jpg', 'Hugh', false),
                SizedBox(width: 25.0),
                listItem('assets/images/johnnydepp.jpg', 'Depp', true),
                SizedBox(width: 25.0),
                listItem('assets/images/tomcruise.jpg', 'Cruise', true),
              ],
            ),
          ),
          //TestSection(), // a test section imported as separate widget test_section.dart
          Container(
            height: 350.0,
            padding: EdgeInsets.only(left: 10.0, right: 10.0),
            child: Row(
              children: <Widget>[
                  RowCard(
                      125,
                      'assets/images/cone.jpeg',
                      'assets/images/johnnydepp.jpg',
                      'Mona Hall',
                      '10:51PM',
                      'I like the way to place items to show more ...'
                  ),
                  SizedBox(width: 10.0),
                  RowCard(
                      250,
                      'assets/images/letter.jpeg',
                      'assets/images/hugh.jpg',
                      'Alicia Scott',
                      '09:14PM',
                      'A window on the world. So nice....'
                  )
              ]
            )
          ),
          Container(
              height: 350.0,
              padding: EdgeInsets.only(left: 10.0, right: 10.0),
              child: Row(
                  children: <Widget>[
                    RowCard(
                        250,
                        'assets/images/window.jpeg',
                        'assets/images/hugh.jpg',
                        'Hugh Forst',
                        '8:30PM',
                        'Nice things you can do ...'
                    ),
                    SizedBox(width: 10.0),
                    RowCard(
                        125,
                        'assets/images/cactus.jpeg',
                        'assets/images/tomcruise.jpg',
                        'Scotty Dale',
                        '07:10PM',
                        'Touchy feely....'
                    )
                  ]
              )
          )

      ],
    ),
    );
  }

  Widget listItem(String imgPath, String name, bool available) {
    return Column(
      children: <Widget>[
        Container(
            height: 70.0,
            width: 70.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35.0),
                image: DecorationImage(image: AssetImage(imgPath),
                fit: BoxFit.cover
                )
            ),
        ),
        SizedBox(height: 7.0),
        Row(
          children: <Widget>[
            Text(name,
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 14.0,
                    fontWeight: FontWeight.w600
                )
            ),
            SizedBox(width: 4.0),
            available? Container(
              height: 10.0,
              width: 10.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: Colors.orange,
              ),
            ) : Container()
          ],
      )
    ]);

  }
}
