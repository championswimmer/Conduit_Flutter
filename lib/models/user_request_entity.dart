class UserRequestEntity {
	UserRequestUser user;

	UserRequestEntity({this.user});

	UserRequestEntity.fromJson(Map<String, dynamic> json) {
		user = json['user'] != null ? new UserRequestUser.fromJson(json['user']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.user != null) {
      data['user'] = this.user.toJson();
    }
		return data;
	}
}

class UserRequestUser {
	String password;
	String email;
	String username;

	UserRequestUser({this.password, this.email, this.username});

	UserRequestUser.fromJson(Map<String, dynamic> json) {
		password = json['password'];
		email = json['email'];
		username = json['username'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['password'] = this.password;
		data['email'] = this.email;
		data['username'] = this.username;
		return data;
	}
}
