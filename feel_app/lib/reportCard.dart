import 'package:flutter/material.dart';

class ReportCard extends StatelessWidget {

  final String title;

  ReportCard({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text(title),
        ),
        body: new Center(
          child: new Text("Select a Report on this page"),
        )
    );
  }
}

