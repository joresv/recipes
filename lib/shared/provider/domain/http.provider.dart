abstract class HttpProvider {
  Future<dynamic> post(
    String path, {
    Map<String, dynamic>? queryParameters,
    Object? body,
    String? savePath,
    void Function(int, int)? onReceiveProgress,
    void Function(int, int)? onSendProgress,
  });

  Future<dynamic> delete(
    String path, {
    Map<String, dynamic>? queryParameters,
    Object? body,
  });

  Future<dynamic> put(
    String path, {
    Map<String, dynamic>? queryParameters,
    Object? body,
  });

  Future<dynamic> get(
    String path, {
    Map<String, dynamic>? queryParameters,
  });
}
