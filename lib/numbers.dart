import 'package:flutter/material.dart';
class Numbers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Numbers"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('ICI NUMBERS! uuuuuh'),
        ),
      ),
    );
  }
}