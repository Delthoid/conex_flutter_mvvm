import 'package:json_annotation/json_annotation.dart';

part 'post.g.dart';

@JsonSerializable()
class Post {
  final String content;
  final DateTime createdAt;
  final String backgroundColor;
  final String userId;

  Post({
    required this.content,
    required this.createdAt,
    required this.backgroundColor,
    required this.userId,
  });

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);

  Map<String, dynamic> toJson() => _$PostToJson(this);
}