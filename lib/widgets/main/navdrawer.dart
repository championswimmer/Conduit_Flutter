import 'package:flutter/material.dart';

class DrawerItem extends ListTile {
  final IconData icon;
  final String label;
  final String goToRoute;

  DrawerItem({this.icon, this.label, this.goToRoute});

  @override
  Widget build(BuildContext context) => ListTile(
        title: Text(label),
        leading: Icon(icon),
        onTap: () {
          Navigator.pushReplacementNamed(context, goToRoute);
        },
      );
}

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
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        DrawerItem(icon: Icons.home, label: 'Home', goToRoute: '/'),
        DrawerItem(icon: Icons.person, label: 'Login / Signup', goToRoute: '/auth',),
        DrawerItem(icon: Icons.settings, label: 'Settings', goToRoute: '/settings'),
      ],
    ));
  }
}

final mainNavDrawer = MainNavDrawer();
