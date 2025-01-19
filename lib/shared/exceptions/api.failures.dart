import 'package:freezed_annotation/freezed_annotation.dart';
// ignore: unused_import
import 'package:flutter/foundation.dart';

part 'api.failures.freezed.dart';

@freezed
class ApiFailures with _$ApiFailures {
  factory ApiFailures.internetError() = InternetError;
}
