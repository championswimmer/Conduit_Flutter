import 'package:conduit/models/article_response_entity.dart';

class CommentResponseEntity {
	Comment comment;

	CommentResponseEntity({this.comment});

	CommentResponseEntity.fromJson(Map<String, dynamic> json) {
		comment = json['comment'] != null ? new Comment.fromJson(json['comment']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.comment != null) {
      data['comment'] = this.comment.toJson();
    }
		return data;
	}
}

class Comment {
	String createdat;
	Author author;
	int id;
	String body;
	String updatedat;

	Comment({this.createdat, this.author, this.id, this.body, this.updatedat});

	Comment.fromJson(Map<String, dynamic> json) {
		createdat = json['createdAt'];
		author = json['author'] != null ? new Author.fromJson(json['author']) : null;
		id = json['id'];
		body = json['body'];
		updatedat = json['updatedAt'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['createdAt'] = this.createdat;
		if (this.author != null) {
      data['author'] = this.author.toJson();
    }
		data['id'] = this.id;
		data['body'] = this.body;
		data['updatedAt'] = this.updatedat;
		return data;
	}
}