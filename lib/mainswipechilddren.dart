import 'package:flutter/material.dart';

import 'package:flutter_swiper/flutter_swiper.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.green,
      ),
      home: new MyHomePage(title: 'Flutter chotta'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text(widget.title),
        ),
        body: Container(
            child: new Swiper.children(
              autoplay: false,
              pagination: new SwiperPagination(
                  margin: new EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 30.0),
                  builder: new DotSwiperPaginationBuilder(
                      color: Colors.white30,
                      activeColor: Colors.white,
                      size: 20.0,
                      activeSize: 20.0)),
              children: <Widget>[
                new Image.asset(
                  'assets/cow2.jpg',
                  fit: BoxFit.contain,
                ),
                new Image.asset(
                  'assets/image1.jpg',
                  fit: BoxFit.contain,
                ),
                new Image.asset(
                  'assets/image2.jpg',
                  fit: BoxFit.contain,
                ),
                new Image.asset('assets/image3.jpg', fit: BoxFit.contain)
              ],
            )
        ));
  }
}
