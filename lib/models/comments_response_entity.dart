import 'package:conduit/models/comment_response_entity.dart';

class CommentsResponseEntity {
	List<Comment> comments;

	CommentsResponseEntity({this.comments});

	CommentsResponseEntity.fromJson(Map<String, dynamic> json) {
		if (json['comments'] != null) {
			comments = new List<Comment>();
			json['comments'].forEach((v) { comments.add(new Comment.fromJson(v)); });
		}
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.comments != null) {
      data['comments'] = this.comments.map((v) => v.toJson()).toList();
    }
		return data;
	}
}