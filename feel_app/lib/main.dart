import 'package:flutter/material.dart';
import 'package:feel_app/homeCard.dart';
import 'package:feel_app/settingsCard.dart';
import 'package:feel_app/journalCard.dart';
import 'package:feel_app/reportCard.dart';
import 'package:feel_app/contactsCard.dart';
import 'package:feel_app/resourcesCard.dart';
import 'package:feel_app/theme.dart';
import 'package:feel_app/feelNavigationBar.dart';

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
      home: new HomeCard(),
      routes: <String, WidgetBuilder> {
        '/settings': (BuildContext context) => new SettingsCard(title: 'Settings'),
        '/journal': (BuildContext context) => new JournalCard(),
        '/reports': (BuildContext context) => new ReportCard(),
        '/contacts': (BuildContext context) => new ContactsCard(),
        '/resources': (BuildContext context) => new ResourcesCard(),
      },
    );
  }
}


