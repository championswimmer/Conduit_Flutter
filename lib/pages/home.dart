
import 'package:conduit/api/conduit/articles.dart';
import 'package:conduit/widgets/articles/article_list.dart';
import 'package:conduit/widgets/main/appbar.dart';
import 'package:conduit/widgets/main/navdrawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      drawer: MainNavDrawer(),
      body: ArticlesList(),
      appBar: appbar
    );
  }
}