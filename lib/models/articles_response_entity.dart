import 'package:conduit/models/article_response_entity.dart';

class ArticlesResponseEntity {
	int articlescount;
	List<Article> articles;

	ArticlesResponseEntity({this.articlescount, this.articles});

	ArticlesResponseEntity.fromJson(Map<String, dynamic> json) {
		articlescount = json['articlesCount'];
		if (json['articles'] != null) {
			articles = new List<Article>();
			json['articles'].forEach((v) { articles.add(new Article.fromJson(v)); });
		}
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['articlesCount'] = this.articlescount;
		if (this.articles != null) {
      data['articles'] = this.articles.map((v) => v.toJson()).toList();
    }
		return data;
	}
}
