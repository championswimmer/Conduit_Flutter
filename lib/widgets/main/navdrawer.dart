import 'package:conduit/models/user_response_entity.dart';
import 'package:flutter/material.dart';

class _DrawerItemsState extends State<_DrawerItems> with RouteAware {
  var selectedRoute = '/';

  _DrawerItemsState(this.selectedRoute);

  _createItem(String title, IconData icon, String route) => ListTile(
    title: Text(title),
    leading: Icon(icon),
    selected: selectedRoute == route,
    onTap: () {
      Navigator.pushReplacementNamed(context, route);
      setState(() {
        selectedRoute = route;
      });
    },
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        _createItem('Home', Icons.home, '/'),
        _createItem('Login / Signup', Icons.person, '/auth'),
        _createItem('Settings', Icons.settings, '/settings'),
      ],
    );
  }

}

class _DrawerItems extends StatefulWidget {
  _DrawerItemsState state;
  @override
  State<_DrawerItems> createState() {
    if (state == null) {
      state = _DrawerItemsState('/');
    } else {
      state = _DrawerItemsState(state.selectedRoute);
    }
    return state;
  }
}

class MainNavDrawer extends StatelessWidget {
  var drawerItems = _DrawerItems();
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
        drawerItems
      ],
    ));
  }
}

final _mainNavDrawer = MainNavDrawer();
get mainNavDrawer {
  return _mainNavDrawer;
}