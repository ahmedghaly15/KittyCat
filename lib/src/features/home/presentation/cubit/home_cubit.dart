import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '/src/core/entities/no_params.dart';
import '/src/features/home/data/models/article_model.dart';
import '/src/features/home/domain/usecases/get_articles.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final GetArticlesUseCase getArticlesUseCase;

  HomeCubit({
    required this.getArticlesUseCase,
  }) : super(HomeInitial());

  void getArticles() {
    emit(GetArticlesLoadingState());
    getArticlesUseCase(const NoParams()).then((value) {
      value.fold(
        (failure) => emit(
          GetArticlesFailureState(failure: failure.errorMessage.toString()),
        ),
        (articles) => emit(
          GetArticlesSuccessState(articles: articles),
        ),
      );
    });
  }
}
