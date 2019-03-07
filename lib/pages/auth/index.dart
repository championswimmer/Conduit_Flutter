import 'package:conduit/pages/auth/login.dart';
import 'package:conduit/pages/auth/signup.dart';
import 'package:conduit/widgets/main/appbar.dart';
import 'package:conduit/widgets/main/navdrawer.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  var _selectedTab = 0;

  _onTabSelected(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  _getPage(int index) {
    switch (index) {
      case 0:
        return LoginFragment();
      case 1:
        return SignupFragment();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: mainNavDrawer,
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.vpn_key),
              title: Text('Login'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_add),
              title: Text('Signup'),
            ),
          ],
          currentIndex: _selectedTab,
          onTap: _onTabSelected,
        ),
        body: _getPage(_selectedTab),
        appBar: appbar);
  }
}
