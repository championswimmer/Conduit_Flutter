import 'package:conduit/models/articles_response_entity.dart';

class ArticleResponseEntity {
	Article article;

	ArticleResponseEntity({this.article});

	ArticleResponseEntity.fromJson(Map<String, dynamic> json) {
		article = json['article'] != null ? new Article.fromJson(json['article']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.article != null) {
      data['article'] = this.article.toJson();
    }
		return data;
	}
}

