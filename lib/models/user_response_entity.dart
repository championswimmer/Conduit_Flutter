class UserResponseEntity {
	User user;

	UserResponseEntity({this.user});

	UserResponseEntity.fromJson(Map<String, dynamic> json) {
		user = json['user'] != null ? new User.fromJson(json['user']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.user != null) {
      data['user'] = this.user.toJson();
    }
		return data;
	}
}

class User {
	String image;
	String bio;
	String email;
	String token;
	String username;

	User({this.image, this.bio, this.email, this.token, this.username});

	User.fromJson(Map<String, dynamic> json) {
		image = json['image'];
		bio = json['bio'];
		email = json['email'];
		token = json['token'];
		username = json['username'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['image'] = this.image;
		data['bio'] = this.bio;
		data['email'] = this.email;
		data['token'] = this.token;
		data['username'] = this.username;
		return data;
	}
}
