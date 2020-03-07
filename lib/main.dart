import 'package:flutter/material.dart';

import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_page_indicator/flutter_page_indicator.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.green,
      ),
      home: new MyHomePage(title: 'Swipe App'),
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

            child: Column(
              
              children: <Widget>[
                 Text('index'),
                Expanded(child:
                new Swiper(
                  layout: SwiperLayout.CUSTOM,
                  customLayoutOption: new CustomLayoutOption(
                      startIndex: -1,  /// Which index is the first item of array below
                      stateCount: 3    /// array length
                  ).addRotate([        // rotation of every item
                 -380.0/40.0,
                    0.0,
                    45.0/180
                  ]).addTranslate([           /// offset of every item
                    new Offset(-390.0, -40.0),
                    new Offset(0.0, 0.0),
                    new Offset(370.0, -40.0)
                  ]),
                  itemBuilder: (BuildContext context, int index) {
                    return new Image.asset(
                      'assets/'+images[index],
                      fit: BoxFit.fill,
                    );
                  },

                  indicatorLayout: PageIndicatorLayout.COLOR,
                  autoplay: false,
                  itemCount: images.length,
                  pagination: new SwiperPagination(),
                  control: new SwiperControl(),
                  duration: 800,

                  itemHeight: 400.0,
                  itemWidth: 300.0,
                ),
                )],
            )
        ));
  }
}

const List<String> images = [
  "images/cow2.jpg",
  "images/image1.jpg",
  "images/image2.jpg",
  "images/image3.jpg",
];