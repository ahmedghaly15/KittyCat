import 'package:equatable/equatable.dart';

class ArticleEntity extends Equatable {
  final String? id;
  final String? title;
  final String? body;
  final String? coverImage;

  const ArticleEntity({
    required this.id,
    required this.title,
    required this.body,
    required this.coverImage,
  });

  @override
  List<Object?> get props => [
        id,
        title,
        body,
        coverImage,
      ];
}
