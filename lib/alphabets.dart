import 'package:flutter/material.dart';

class Alphabets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alphabets"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('ICI ALPHABETS!oooooooh'),
        ),
      ),
    );
  }
}