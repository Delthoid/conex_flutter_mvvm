// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Post _$PostFromJson(Map<String, dynamic> json) => Post(
      content: json['content'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      backgroundColor: json['backgroundColor'] as String,
      userId: (json['userId'] as num).toInt(),
    );

Map<String, dynamic> _$PostToJson(Post instance) => <String, dynamic>{
      'content': instance.content,
      'createdAt': instance.createdAt.toIso8601String(),
      'backgroundColor': instance.backgroundColor,
      'userId': instance.userId,
    };
