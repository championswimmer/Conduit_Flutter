class ProfileResponseEntity {
	Profile profile;

	ProfileResponseEntity({this.profile});

	ProfileResponseEntity.fromJson(Map<String, dynamic> json) {
		profile = json['profile'] != null ? new Profile.fromJson(json['profile']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.profile != null) {
      data['profile'] = this.profile.toJson();
    }
		return data;
	}
}

class Profile {
	String image;
	bool following;
	String bio;
	String username;

	Profile({this.image, this.following, this.bio, this.username});

	Profile.fromJson(Map<String, dynamic> json) {
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
