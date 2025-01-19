import 'package:dio/dio.dart';
import 'package:receip_app/config.dart';
import 'package:receip_app/shared/provider/domain/http.provider.dart';
import 'package:receip_app/shared/provider/infra/dio/exceptions/dio.exceptions.dart';

class HttpDioProvider extends HttpProvider {
  late Dio _dio;

  void init() {
    final BaseOptions baseOption = BaseOptions(
      baseUrl: ConfigEnvironments.baseUrl,
      headers: _defaultHeader,
      receiveTimeout: const Duration(seconds: 20),
      connectTimeout: const Duration(seconds: 20),
    );
    _dio = Dio(baseOption);
    _interceptor();
  }

  Map<String, dynamic> get _defaultHeader => <String, dynamic>{
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      };

  @override
  Future delete(String path, {Map<String, dynamic>? queryParameters, body}) {
    return _dio.delete(path, queryParameters: queryParameters, data: body);
  }

  @override
  Future get(String path, {Map<String, dynamic>? queryParameters}) {
    return _dio.get(path, queryParameters: queryParameters);
  }

  @override
  Future post(
    String path, {
    Map<String, dynamic>? queryParameters,
    Object? body,
    String? savePath,
    void Function(int p1, int p2)? onReceiveProgress,
    void Function(int p1, int p2)? onSendProgress,
  }) {
    return _dio.post(path, queryParameters: queryParameters, data: body);
  }

  @override
  Future put(String path,
      {Map<String, dynamic>? queryParameters, Object? body}) {
    return _dio.put(path, queryParameters: queryParameters, data: body);
  }

  void _interceptor() {
    _dio.interceptors.add(InterceptorsWrapper(
      onError: (DioException e, ErrorInterceptorHandler handler) async {
        switch (e.response?.statusCode) {
          case 400:
            return handler.next(BadRequestException(e));
          case 401:
            return handler.next(UnauthorisedException(e));
          case 405:
            return handler.next(BadRequestException(e));
          case 422:
            return handler.next(ValidationException(e));
          case 500:
            return handler.next(ServerErrorException(e));
          default:
            return handler.next(UnkNowException(e));
        }
      },
      onRequest:
          (RequestOptions options, RequestInterceptorHandler handler) async {
        //Authorization Bearer
        return handler.next(options);
      },
      onResponse: (Response e, ResponseInterceptorHandler handler) async {
        //parse response
        return handler.next(e);
      },
    ));
  }
}
