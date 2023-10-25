import 'package:dartz/dartz.dart';
import 'package:kitty_cat/src/features/home/data/models/article_model.dart';

import '../../../../core/errors/failure.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<ArticleModel>>> getArticles();
}
