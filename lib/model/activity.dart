// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
    Welcome({
        this.activity,
        this.type,
        this.participants,
        this.price,
        this.link,
        this.key,
        this.accessibility,
    });

    String? activity;
    String? type;
    int? participants;
    double? price;
    String? link;
    String? key;
    double? accessibility;

    factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        activity: json["activity"],
        type: json["type"],
        participants: json["participants"],
        price: json["price"].toDouble(),
        link: json["link"],
        key: json["key"],
        accessibility: json["accessibility"].toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "activity": activity,
        "type": type,
        "participants": participants,
        "price": price,
        "link": link,
        "key": key,
        "accessibility": accessibility,
    };
}
