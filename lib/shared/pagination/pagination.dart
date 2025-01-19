
class Pagination<T> {
  List<T> _data = [];
  int total;
  int totalPages;
  int currentPage;
  int limit;

  Pagination({
    required this.total,
    required List<T> data,
    required this.totalPages,
    required this.limit,
    required this.currentPage,
  }) {
    _data = data;
  }

  void merge(Pagination<T> other) {
    if (other.currentPage > currentPage) {
      _data.addAll(other._data);
      currentPage = other.currentPage;
      total = other.total;
      totalPages = other.totalPages;
    }
  }

  List<T> get data => _data;

  bool get hasNextPage => currentPage < totalPages;

  Pagination.fromJson(
      Map<String, dynamic> json, T Function(Map<String, dynamic> json) parser)
      : total = json['total'],
        _data = (json['data'] as List).map((d) => parser(d)).toList(),
        totalPages = json['last_page'],
        limit = json['per_page'],
        currentPage = json['current_page'];

  Pagination.empty()
      : _data = [],
        total = 0,
        totalPages = 0,
        limit = 0,
        currentPage = 0;
}
