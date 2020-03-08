import 'package:flutter/material.dart';
import 'alphabets.dart';
import 'numbers.dart';
import 'test.dart';
import 'package:share/share.dart';

void main() {
  runApp(MaterialApp(
    title: 'Navigation Basics',
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //decoration: new BoxDecoration(color: Colors.red),
      appBar: AppBar(
        title: Text('Learn Alphabets and Numbers'),
        actions: <Widget>[
          new IconButton(
            icon: Icon(Icons.share),
            onPressed: () {
              final RenderBox box = context.findRenderObject();
              Share.share('partager had lien app ara dima berra33',
                  sharePositionOrigin:
                      box.localToGlobal(Offset.zero) & box.size);
            },
          ),
        ],
      ),
      body: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(50.0),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: new Card(
                  //elevation :2,
                  //CircleAvatar:(radius: 25.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Alphabets'),
                      Center(
                        child: InkWell(
                          child: Image.asset('assets/imagebutton/aaa.png'),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Alphabets()),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: new Card(
                  //elevation :2,
                  //CircleAvatar:(radius: 25.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Numbers'),
                      Center(
                        child: InkWell(
                          child: Image.asset('assets/imagebutton/nnn.png'),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Numbers()),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Center(
                      child: RaisedButton(
                        child: Text('share this App'),
                        onPressed: () {
                          final RenderBox box = context.findRenderObject();
                          Share.share(
                              'lien dyal application fplay stor ara berra3',
                              sharePositionOrigin:
                                  box.localToGlobal(Offset.zero) & box.size);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
