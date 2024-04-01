// To parse this JSON data, do
//
//     final applicationStatusModel = applicationStatusModelFromJson(jsonString);

import 'dart:convert';

ApplicationStatusModel applicationStatusModelFromJson(String str) => ApplicationStatusModel.fromJson(json.decode(str));

String applicationStatusModelToJson(ApplicationStatusModel data) => json.encode(data.toJson());

class ApplicationStatusModel {
    int? status;
    List<Datum>? data;

    ApplicationStatusModel({
        this.status,
        this.data,
    });

    factory ApplicationStatusModel.fromJson(Map<String, dynamic> json) => ApplicationStatusModel(
        status: json["status"],
        data: json["data"] == null ? [] : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
    };
}

class Datum {
    int? id;
    Student? student;
    DateTime? appliedDate;
    Status? status;
    int? job;

    Datum({
        this.id,
        this.student,
        this.appliedDate,
        this.status,
        this.job,
    });

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        student: studentValues.map[json["student"]]!,
        appliedDate: json["applied_date"] == null ? null : DateTime.parse(json["applied_date"]),
        status: statusValues.map[json["status"]]!,
        job: json["job"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "student": studentValues.reverse[student],
        "applied_date": appliedDate?.toIso8601String(),
        "status": statusValues.reverse[status],
        "job": job,
    };
}

enum Status {
    APPROVED,
    PENDING,
    REJECTED
}

final statusValues = EnumValues({
    "APPROVED": Status.APPROVED,
    "PENDING": Status.PENDING,
    "REJECTED": Status.REJECTED
});

enum Student {
    ATHUL
}

final studentValues = EnumValues({
    "Athul": Student.ATHUL
});

class EnumValues<T> {
    Map<String, T> map;
    late Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        reverseMap = map.map((k, v) => MapEntry(v, k));
        return reverseMap;
    }
}
