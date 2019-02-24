
import 'package:conduit/models/article_response_entity.dart';
import 'package:flutter/material.dart';

class ArticleCard extends Container {
  Article article;
  ArticleCard(this.article);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Card(
          elevation: 5,
          child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  this.article.title,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 14),
                ),
                Text(this.article.body)
              ],
            ),
          )
      ),
    );
  }



}