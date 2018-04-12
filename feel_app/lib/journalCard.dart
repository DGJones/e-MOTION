import 'package:feel_app/feelNavigationBar.dart';
import 'package:flutter/material.dart';

class JournalCard extends StatelessWidget {

  JournalCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    void _openSettings() {
      Navigator.of(context).pushNamed("/settings");
    }

    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Journal"),
          actions: <Widget>[
            new IconButton(
              icon: new Icon(Icons.settings),
              onPressed: _openSettings,
            )
          ],
        ),
        bottomNavigationBar: new FeelNavigationBar(index: 2),
        body: new Center(
          child: new Text("Select a journal entry here"),
        )
    );
  }
}

