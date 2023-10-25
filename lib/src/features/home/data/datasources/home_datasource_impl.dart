import 'package:kitty_cat/src/core/api/end_points.dart';

import '/src/core/api/api_consumer.dart';

import 'home_datasource.dart';

class HomeDataSourceImpl implements HomeDataSource {
  final ApiConsumer apiConsumer;

  const HomeDataSourceImpl({required this.apiConsumer});

  @override
  Future<List<dynamic>> getArticles() async {
    final response = await apiConsumer.get(EndPoints.articles);
    return response;
  }
}
