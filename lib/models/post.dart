import 'package:json_annotation/json_annotation.dart';

part 'post.g.dart';

@JsonSerializable()
class Post {
  final String content;
  final DateTime createdAt;
  final String backgroundColor;
  final int userId;

  Post({
    required this.content,
    required this.createdAt,
    required this.backgroundColor,
    required this.userId,
  });
}