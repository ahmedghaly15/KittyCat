part of 'home_cubit.dart';

abstract class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object> get props => [];
}

class HomeInitial extends HomeState {}

class GetArticlesLoadingState extends HomeState {}

class GetArticlesSuccessState extends HomeState {
  final List<ArticleModel> articles;

  const GetArticlesSuccessState({required this.articles});

  @override
  List<Object> get props => [articles];
}

class GetArticlesFailureState extends HomeState {
  final String failure;

  const GetArticlesFailureState({required this.failure});

  @override
  List<Object> get props => [failure];
}
