import 'package:dio/dio.dart';

class ApiException extends DioException {
  String? errorMessage;

  ApiException(DioException exception):super(
    requestOptions: exception.requestOptions,
    error: exception.error,
    message: exception.message,
    response: exception.response,
    stackTrace: exception.stackTrace,
    type: exception.type,
  );
}

class ServerErrorException extends ApiException {
  ServerErrorException(super.exception);
}

class ValidationException extends ApiException {
  ValidationException(super.exception);
}

class BadRequestException extends ApiException {
  BadRequestException(super.exception);
}

class UnauthorisedException extends ApiException {
  UnauthorisedException(super.exception);
}

class UnkNowException extends ApiException {
  UnkNowException(super.exception);
}

class NotFoundException extends ApiException {
  NotFoundException(super.exception);
}
