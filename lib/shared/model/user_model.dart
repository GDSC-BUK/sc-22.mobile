import 'dart:convert';

class UserModel {
  UserModel({
    required this.id,
    required this.token,
    required this.lastLogin,
    required this.isSuperuser,
    required this.firstName,
    required this.lastName,
    required this.isStaff,
    required this.isActive,
    required this.dateJoined,
    required this.created,
    required this.updated,
    required this.username,
    required this.email,
    required this.type,
  });

  final String id;
  final String token;
  final DateTime lastLogin;
  final bool isSuperuser;
  final String firstName;
  final String lastName;
  final bool isStaff;
  final bool isActive;
  final DateTime dateJoined;
  final DateTime created;
  final DateTime updated;
  final String username;
  final dynamic email;
  final String type;

  factory UserModel.fromRawJson(String str) =>
      UserModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        id: json["id"],
        token: json["token"],
        lastLogin: DateTime.parse(json["last_login"]),
        isSuperuser: json["is_superuser"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        isStaff: json["is_staff"],
        isActive: json["is_active"],
        dateJoined: DateTime.parse(json["date_joined"]),
        created: DateTime.parse(json["created"]),
        updated: DateTime.parse(json["updated"]),
        username: json["username"],
        email: json["email"],
        type: json["type"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "token": token,
        "last_login": lastLogin.toIso8601String(),
        "is_superuser": isSuperuser,
        "first_name": firstName,
        "last_name": lastName,
        "is_staff": isStaff,
        "is_active": isActive,
        "date_joined": dateJoined.toIso8601String(),
        "created": created.toIso8601String(),
        "updated": updated.toIso8601String(),
        "username": username,
        "email": email,
        "type": type,
      };
}
