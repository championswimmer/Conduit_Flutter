import 'package:conduit/pages/home.dart';
import 'package:conduit/pages/settings.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/settings': (context) => SettingsPage()
      },
      title: 'Conduit',
      theme: ThemeData(
        primaryColor: Colors.green[700],
        accentColor: Colors.greenAccent[400],
      ),
    );
  }
}
