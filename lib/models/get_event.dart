// To parse this JSON data, do
//
//     final getEvent = getEventFromJson(jsonString);

import 'dart:convert';

List<GetEvent> getEventFromJson(String str) =>
    List<GetEvent>.from(json.decode(str).map((x) => GetEvent.fromJson(x)));

String getEventToJson(List<GetEvent> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class GetEvent {
  GetEvent({
    this.dateTime,
    this.title,
    this.description,
    this.imageUrl,
  });

  String? dateTime;
  String? title;
  String? description;
  String? imageUrl;

  factory GetEvent.fromJson(Map<String, dynamic> json) => GetEvent(
        dateTime: json["dateTime"],
        title: json["title"],
        description: json["description"],
        imageUrl: json["imageUrl"],
      );

  Map<String, dynamic> toJson() => {
        "dateTime": dateTime,
        "title": title,
        "description": description,
        "imageUrl": imageUrl,
      };
}
