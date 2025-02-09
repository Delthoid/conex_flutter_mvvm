import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  final String userId;
  final String userName;
  final String firstName;
  final String? lastName;
  final String avatarUrl;
  final DateTime createdAt;

  User({
    required this.userId,
    required this.userName,
    required this.firstName,
    this.lastName,
    required this.avatarUrl,
    DateTime? createdAt
  }) : createdAt = createdAt ?? DateTime.now();

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}