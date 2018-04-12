import 'package:flutter/material.dart';

class SettingsCard extends StatelessWidget {

  final String title;

  SettingsCard({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    void _openSettings() {
      Navigator.of(context).pushNamed("/settings");
    }

    return new Scaffold(
      appBar: new AppBar(
        title: new Text(title),
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.settings),
            onPressed: _openSettings,
          )
        ],
      ),
      body: new Center(
        child: new Text("Please settings to this page"),
      )
    );
  }
}

