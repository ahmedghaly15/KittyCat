import 'package:dartz/dartz.dart';
import 'package:kitty_cat/src/core/entities/no_params.dart';
import 'package:kitty_cat/src/core/errors/failure.dart';
import 'package:kitty_cat/src/core/usecases/base_usecase.dart';
import 'package:kitty_cat/src/features/home/data/models/article_model.dart';
import 'package:kitty_cat/src/features/home/domain/repositories/home_repo.dart';

class GetArticlesUseCase implements BaseUseCases<List<ArticleModel>, NoParams> {
  final HomeRepo homeRepo;

  const GetArticlesUseCase({required this.homeRepo});

  @override
  Future<Either<Failure, List<ArticleModel>>> call(NoParams params) async {
    return await homeRepo.getArticles();
  }
}
