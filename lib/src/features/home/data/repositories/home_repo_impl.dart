import 'package:dartz/dartz.dart';
import 'package:kitty_cat/src/core/errors/server_failure.dart';
import 'package:kitty_cat/src/core/network/network_info.dart';
import 'package:kitty_cat/src/core/utils/app_strings.dart';
import 'package:kitty_cat/src/features/home/data/datasources/home_datasource.dart';
import 'package:kitty_cat/src/features/home/data/models/article_model.dart';

import '/src/core/errors/failure.dart';

import '/src/features/home/domain/repositories/home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  final NetworkInfo networkInfo;
  final HomeDataSource homeDataSource;

  const HomeRepoImpl({required this.networkInfo, required this.homeDataSource});

  @override
  Future<Either<Failure, List<ArticleModel>>> getArticles() async {
    if (await networkInfo.isConnected) {
      try {
        final response = await homeDataSource.getArticles();

        final List<ArticleModel> articles = <ArticleModel>[];

        for (var article in response) {
          articles.add(ArticleModel.fromJson(article as Map<String, dynamic>));
        }

        return Right(articles);
      } catch (e) {
        return Left(ServerFailure(errorMessage: e.toString()));
      }
    } else {
      return Left(ServerFailure(errorMessage: AppStrings.checkInternet));
    }
  }
}
