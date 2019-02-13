
import 'package:conduit/api/conduit_api.dart';
import 'package:conduit/widgets/main/appbar.dart';
import 'package:conduit/widgets/main/navdrawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    var articles = getArticles();
    articles.then((data) {
      debugPrint('articles = ' + data.articlescount.toString());
    });

    return Scaffold(
      drawer: MainNavDrawer(),
      body: Text("Home"),
      appBar: appbar
    );
  }
}