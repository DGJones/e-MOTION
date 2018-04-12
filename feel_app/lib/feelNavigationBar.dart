import 'package:flutter/material.dart';

class FeelNavigationBar extends StatefulWidget {

  final int index;

  FeelNavigationBar({Key key, this.index}) : super (key: key);

  @override
  _FeelNavigationBarState createState() => new _FeelNavigationBarState(index);
}

class _FeelNavigationBarState extends State<FeelNavigationBar> {

  int _index = 0;

  _FeelNavigationBarState(int index) {
    _index = index;
  }

  @override
  Widget build(BuildContext context){
    return new BottomNavigationBar(
      currentIndex: _index,
      type: BottomNavigationBarType.fixed,
      items: <BottomNavigationBarItem>[
        new BottomNavigationBarItem(icon: new Icon(Icons.home), title: new Text("Home")),
        new BottomNavigationBarItem(icon: new Icon(Icons.assessment), title: new Text("Reports")),
        new BottomNavigationBarItem(icon: new Icon(Icons.library_books), title: new Text("Journal")),
        new BottomNavigationBarItem(icon: new Icon(Icons.people), title: new Text("Contacts")),
        new BottomNavigationBarItem(icon: new Icon(Icons.link), title: new Text("Resources")),
      ],
      onTap: (int index) {
        setState(() {
          switch (index) {
            case 0: Navigator.of(context).pushReplacementNamed("/"); break;
            case 1: Navigator.of(context).pushReplacementNamed("/reports"); break;
            case 2: Navigator.of(context).pushReplacementNamed("/journal"); break;
            case 3: Navigator.of(context).pushReplacementNamed("/contacts"); break;
            case 4: Navigator.of(context).pushReplacementNamed("/resources"); break;
          }
        });
      }
    );
  }
}
