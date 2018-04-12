import 'package:flutter/material.dart';
import 'package:feel_app/homeCard.dart';
import 'package:feel_app/settingsCard.dart';
import 'package:feel_app/journalCard.dart';
import 'package:feel_app/reportCard.dart';
import 'package:feel_app/contactsCard.dart';
import 'package:feel_app/resourcesCard.dart';
import 'package:feel_app/theme.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Feel',
      theme: feelThemeData,
      /*
      new ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or press Run > Flutter Hot Reload in IntelliJ). Notice that the
        // counter didn't reset back to zero; the application is not restarted.
        primarySwatch: Colors.deepOrange,
        backgroundColor: new Color.fromARGB(255, 110, 196, 217),
        scaffoldBackgroundColor: new Color.fromARGB(255, 110, 196, 217),
      ),
      */
      home: new MyHomePage(title: 'Feel'),
      routes: <String, WidgetBuilder> {
        '/settings': (BuildContext context) => new SettingsCard(title: 'Feel settings'),
        '/journal': (BuildContext context) => new JournalCard(title: 'Feel journal'),
        '/reports': (BuildContext context) => new ReportCard(title: 'Feel reports'),
        '/contacts': (BuildContext context) => new ContactsCard(title: 'Feel contacts'),
        '/resources': (BuildContext context) => new ResourcesCard(title: 'Feel resources'),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  Widget _currentCard = new HomeCard();
  int _currentIndex = 0;
  int _previousIndex = 0;

  @override
  Widget build(BuildContext context) {

    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return new Scaffold(
      appBar: new AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: new Text(widget.title),
        actions: <Widget>[
          new IconButton(
              icon: new Icon(Icons.settings),
              onPressed: _openSettings,
          )
        ],
      ),

      bottomNavigationBar: new BottomNavigationBar(items: <BottomNavigationBarItem>[
          new BottomNavigationBarItem(icon: new Icon(Icons.home), title: new Text("Home")),
          new BottomNavigationBarItem(icon: new Icon(Icons.assessment), title: new Text("Reports")),
          new BottomNavigationBarItem(icon: new Icon(Icons.library_books), title: new Text("Journal")),
          new BottomNavigationBarItem(icon: new Icon(Icons.people), title: new Text("Contacts")),
          new BottomNavigationBarItem(icon: new Icon(Icons.link), title: new Text("Resources")),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (int index){
          _previousIndex = _currentIndex;
          setState(() {
            _currentIndex = index;
            switch (index) {
              //case 0: Navigator.of(context).pushNamed("/"); break;
              case 1: Navigator.of(context).pushNamed("/reports"); break;
              case 2: Navigator.of(context).pushNamed("/journal"); break;
              case 3: Navigator.of(context).pushNamed("/contacts"); break;
              case 4: Navigator.of(context).pushNamed("/resources"); break;
            }
          });
        },
      ),
      body: _currentCard,
    );
  }

  void _openSettings() {
    setState((){
        Navigator.of(context).pushNamed("/settings");
        });
  }
}
