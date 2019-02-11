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
