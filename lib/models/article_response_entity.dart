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

class Author {
	String image;
	bool following;
	String bio;
	String username;

	Author({this.image, this.following, this.bio, this.username});

	Author.fromJson(Map<String, dynamic> json) {
		image = json['image'];
		following = json['following'];
		bio = json['bio'];
		username = json['username'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['image'] = this.image;
		data['following'] = this.following;
		data['bio'] = this.bio;
		data['username'] = this.username;
		return data;
	}
}
class Article {
	List<String> taglist;
	String createdat;
	Author author;
	String description;
	String title;
	String body;
	int favoritescount;
	String slug;
	String updatedat;
	bool favorited;

	Article({this.taglist, this.createdat, this.author, this.description, this.title, this.body, this.favoritescount, this.slug, this.updatedat, this.favorited});

	Article.fromJson(Map<String, dynamic> json) {
		taglist = json['tagList'].cast<String>();
		createdat = json['createdAt'];
		author = json['author'] != null ? new Author.fromJson(json['author']) : null;
		description = json['description'];
		title = json['title'];
		body = json['body'];
		favoritescount = json['favoritesCount'];
		slug = json['slug'];
		updatedat = json['updatedAt'];
		favorited = json['favorited'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['tagList'] = this.taglist;
		data['createdAt'] = this.createdat;
		if (this.author != null) {
			data['author'] = this.author.toJson();
		}
		data['description'] = this.description;
		data['title'] = this.title;
		data['body'] = this.body;
		data['favoritesCount'] = this.favoritescount;
		data['slug'] = this.slug;
		data['updatedAt'] = this.updatedat;
		data['favorited'] = this.favorited;
		return data;
	}
}