class RecipeFilter {
  final int page;
  final int limit;
  final String query;
  RecipeFilter({required this.page, required this.limit, this.query=''});

  Map<String, dynamic> toJson() {
    return {
      'limit': limit,
      'skip': limit * (page - 1),
      'q': query,
    };
  }
}
