// To parse this JSON data, do
//
//     final getstaff = getstaffFromJson(jsonString);

// ignore_for_file: constant_identifier_names

import 'dart:convert';

List<Getstaff> getstaffFromJson(String str) =>
    List<Getstaff>.from(json.decode(str).map((x) => Getstaff.fromJson(x)));

String getstaffToJson(List<Getstaff> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Getstaff {
  Getstaff({
    required this.imageUrl,
    required this.name,
    required this.position,
    required this.experience,
    required this.raiting,
    required this.description,
    required this.sub,
    required this.license,
    required this.school,
    required this.yeargraduated,
    required this.board,
  });

  String imageUrl;
  String name;
  String position;
  String experience;
  String raiting;
  String description;
  List<Sub> sub;
  String license;
  String school;
  String yeargraduated;
  String board;

  factory Getstaff.fromJson(Map<String, dynamic> json) => Getstaff(
        imageUrl: json["imageUrl"],
        name: json["name"],
        position: json["position"],
        experience: json["experience"],
        raiting: json["raiting"],
        description: json["description"],
        sub: List<Sub>.from(json["sub"].map((x) => subValues.map[x])),
        license: json["license"],
        school: json["school"],
        yeargraduated: json["yeargraduated"],
        board: json["Board"],
      );

  Map<String, dynamic> toJson() => {
        "imageUrl": imageUrl,
        "name": name,
        "position": position,
        "experience": experience,
        "raiting": raiting,
        "description": description,
        "sub": List<dynamic>.from(sub.map((x) => subValues.reverse[x])),
        "license": license,
        "school": school,
        "yeargraduated": yeargraduated,
        "Board": board,
      };
}

enum Sub { COUPLES_RELATIONSHIP, MOTIVATION, EMOTIONS }

final subValues = EnumValues({
  "Couples relationship": Sub.COUPLES_RELATIONSHIP,
  "Emotions": Sub.EMOTIONS,
  "Motivation": Sub.MOTIVATION
});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String>? reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap ??= map.map((k, v) => MapEntry(v, k));
    return reverseMap!;
  }
}
