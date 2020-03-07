import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_page_indicator/flutter_page_indicator.dart';

class Alphabets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alphabets"),
      ),
      body: Container(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('index'),
          Expanded(
            child: new Swiper(
              layout: SwiperLayout.CUSTOM,
              customLayoutOption: new CustomLayoutOption(
                      startIndex: -1,

                      /// Which index is the first item of array below
                      stateCount: 3

                      /// array length
                      )
                  .addRotate([
                // rotation of every item
                -380.0 / 40.0,
                0.0,
                45.0 / 180
              ]).addTranslate([
                /// offset of every item
                new Offset(-390.0, -40.0),
                new Offset(0.0, 0.0),
                new Offset(370.0, -40.0)
              ]),
              itemBuilder: (BuildContext context, int index) {
                return new Image.asset(
                  'assets/' + images[index],
                  fit: BoxFit.fill,
                );
              },

              indicatorLayout: PageIndicatorLayout.NONE,
              autoplay: false,
              itemCount: images.length,
              //  pagination: new SwiperPagination(),
              control: new SwiperControl(),
              duration: 800,
              itemHeight: 300.0,
              itemWidth: 200.0,
            ),
          )
        ],
      )),
    );
  }
}

const List<String> images = [
  "images/a.png",
  "images/b.png",
  "images/c.png",
  "images/d.png",
  "images/e.png",
  "images/f.png",
  "images/g.png",
  "images/h.png",
  "images/i.png",
  "images/j.png",
  "images/k.png",
  "images/l.png",
  "images/m.png",
  "images/n.png",
  "images/o.png",
  "images/p.png",
  "images/q.png",
  "images/r.png",
  "images/s.png",
  "images/t.png",
  "images/u.png",
  "images/v.png",
  "images/w.png",
  "images/x.png",
  "images/y.png",
  "images/z.png",
];
