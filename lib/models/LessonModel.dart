// To parse this JSON data, do
//
//     final lessonsModel = lessonsModelFromJson(jsonString);

import 'dart:convert';

LessonsModel lessonsModelFromJson(String str) => LessonsModel.fromJson(json.decode(str));

String lessonsModelToJson(LessonsModel data) => json.encode(data.toJson());

class LessonsModel {
    String requestId;
    List<LessonItem> items;
    int count;
    String anyKey;

    LessonsModel({
        required this.requestId,
        required this.items,
        required this.count,
        required this.anyKey,
    });

    factory LessonsModel.fromJson(Map<String, dynamic> json) => LessonsModel(
        requestId: json["requestId"],
        items: List<LessonItem>.from(json["items"].map((x) => LessonItem.fromJson(x))),
        count: json["count"],
        anyKey: json["anyKey"],
    );

    Map<String, dynamic> toJson() => {
        "requestId": requestId,
        "items": List<dynamic>.from(items.map((x) => x.toJson())),
        "count": count,
        "anyKey": anyKey,
    };
}

class LessonItem {
    DateTime createdAt;
    String name;
    int duration;
    String category;
    bool locked;
    String id;

    LessonItem({
        required this.createdAt,
        required this.name,
        required this.duration,
        required this.category,
        required this.locked,
        required this.id,
    });

    factory LessonItem.fromJson(Map<String, dynamic> json) => LessonItem(
        createdAt: DateTime.parse(json["createdAt"]),
        name: json["name"],
        duration: json["duration"],
        category: json["category"],
        locked: json["locked"],
        id: json["id"],
    );

    Map<String, dynamic> toJson() => {
        "createdAt": createdAt.toIso8601String(),
        "name": name,
        "duration": duration,
        "category": category,
        "locked": locked,
        "id": id,
    };
}
