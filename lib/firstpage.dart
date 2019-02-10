import 'package:flutter/material.dart';



class FirstPage extends StatelessWidget {
  final String title;
  FirstPage(this.title);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text(title),
      ),
      body: new Center(
        child: new Text(title),
      ),
    );
  }
}

