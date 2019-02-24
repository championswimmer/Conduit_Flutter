import 'package:conduit/widgets/main/appbar.dart';
import 'package:conduit/widgets/main/navdrawer.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: mainNavDrawer,
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.person_add),
            title: Text('Signup'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.vpn_key),
            title: Text('Login'),
          )
        ]),
        body: Container(
          alignment: Alignment(0, 0),
          child: Text('Wow'),
        ),
        appBar: appbar);
  }
}
