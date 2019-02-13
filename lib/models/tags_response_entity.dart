class TagsResponseEntity {
	List<String> tags;

	TagsResponseEntity({this.tags});

	TagsResponseEntity.fromJson(Map<String, dynamic> json) {
		tags = json['tags'].cast<String>();
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['tags'] = this.tags;
		return data;
	}
}
