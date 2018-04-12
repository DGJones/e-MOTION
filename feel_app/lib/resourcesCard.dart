import 'package:feel_app/feelNavigationBar.dart';
import 'package:flutter/material.dart';

class ResourcesCard extends StatelessWidget {

  ResourcesCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    void _openSettings() {
      Navigator.of(context).pushNamed("/settings");
    }

    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Resources"),
          actions: <Widget>[
            new IconButton(
              icon: new Icon(Icons.settings),
              onPressed: _openSettings,
            )
          ],
        ),
        bottomNavigationBar: new FeelNavigationBar(index: 4),
        body: new Center(
          child: new Text("Resources go here"),
        )
    );
  }
}

