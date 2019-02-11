
import 'package:conduit/widgets/appbar.dart';
import 'package:conduit/widgets/navdrawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainNavDrawer(),
      body: Text("Home"),
      appBar: appbar
    );
  }
}