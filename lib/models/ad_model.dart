// To parse this JSON data, do
//
//     final post = postFromJson(jsonString);

import 'dart:convert';

List<Post> postFromJson(String str) =>
    List<Post>.from(json.decode(str).map((x) => Post.fromJson(x)));

String postToJson(List<Post> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Post {
  Post({
    required this.title,
    required this.imageUrl,
    required this.description,
  });

  String title;
  String imageUrl;
  String description;

  factory Post.fromJson(Map<String, dynamic> json) => Post(
        title: json["title"],
        imageUrl: json["imageUrl"],
        description: json["description"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "imageUrl": imageUrl,
        "description": description,
      };
}
