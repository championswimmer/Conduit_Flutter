import 'package:conduit/api/conduit/articles.dart';
import 'package:conduit/models/articles_response_entity.dart';
import 'package:conduit/widgets/articles/article_card.dart';
import 'package:flutter/material.dart';

class ArticlesList extends StatefulWidget {
  @override
  _ArticlesState createState() => _ArticlesState();
}

class _ArticlesState extends State<ArticlesList> {
  Future<ArticlesResponseEntity> articlesResponse;

  @override
  void initState() {
    super.initState();
    articlesResponse = getArticles();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<ArticlesResponseEntity>(
      future: articlesResponse,
      builder: (BuildContext context,
          AsyncSnapshot<ArticlesResponseEntity> snapshot) {
        if (snapshot.hasData) {
          debugPrint("ARTICLES  = " + snapshot.data.articlescount.toString());

          return ListView.builder(
            itemCount: snapshot.data.articles.length,
            itemBuilder: (c, i) => ArticleCard(snapshot.data.articles[i])
          );
        }
        return Container(
          child: CircularProgressIndicator(),
          alignment: Alignment(0, 0),
        );
      },
    );
  }
}
