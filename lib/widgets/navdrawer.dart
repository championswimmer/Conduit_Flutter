import 'package:conduit/main.dart';
import 'package:flutter/material.dart';

class MainNavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          FlatButton(
            child: Text('Home'),
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/');
            },
          ),
          FlatButton(
            child: Text('Settings'),
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/settings');
            },
          )
        ],
      )
    );
  }
}