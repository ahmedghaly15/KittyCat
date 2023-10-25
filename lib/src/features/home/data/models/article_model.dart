import 'package:kitty_cat/src/features/home/domain/entities/article_entity.dart';

class ArticleModel extends ArticleEntity {
  const ArticleModel({
    String? id,
    String? title,
    String? body,
    String? coverImage,
  }) : super(
          id: id,
          title: title,
          body: body,
          coverImage: coverImage,
        );

  factory ArticleModel.fromJson(Map<String, dynamic> json) => ArticleModel(
        id: json['_id'] as String?,
        title: json['title'] as String?,
        body: json['body'] as String?,
        coverImage: json['coverImage'] as String?,
      );
}
