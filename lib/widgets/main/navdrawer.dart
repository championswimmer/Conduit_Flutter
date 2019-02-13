import 'package:flutter/material.dart';

class MainNavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Container(
          padding: EdgeInsets.symmetric(vertical: 50),
          color: Colors.green[500],
          alignment: Alignment(0, 0),
          child: Text(
            'conduit',
            style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        FlatButton(
          child: Row(
            children: <Widget>[
              Icon(Icons.home),
              Padding(
                padding: EdgeInsets.all(10),
              ),
              Text('Home')
            ],
          ),
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/');
          },
        ),
        FlatButton(
          child: Row(
            children: <Widget>[
              Icon(Icons.settings),
              Padding(
                padding: EdgeInsets.all(10),
              ),
              Text('Settings')
            ],
          ),
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/settings');
          },
        )
      ],
    ));
  }
}
