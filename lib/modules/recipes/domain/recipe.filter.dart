import 'package:recipes_app/shared/enums/RequestOrder.dart';

class RecipeFilter {
  final int page;
  final int limit;
  final String query;
  final RequestOrder order;
  RecipeFilter(
      {required this.page,
      required this.limit,
      this.query = '',
      required this.order});

  Map<String, dynamic> toJson() {
    return {
      'limit': limit,
      'skip': limit * (page - 1),
      'q': query,
      'sortBy': 'name',
      'order': order.name,
    };
  }
}
