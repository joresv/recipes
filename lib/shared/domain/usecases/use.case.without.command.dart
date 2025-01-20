import 'package:dartz/dartz.dart';
import 'package:recipes_app/shared/exceptions/api.failures.dart';

abstract class UseCaseWithoutCommand<Result> {
  Future<Either<ApiFailures, Result>> execute();
}
