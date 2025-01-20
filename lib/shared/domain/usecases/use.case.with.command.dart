import 'package:dartz/dartz.dart';
import 'package:recipes_app/shared/exceptions/api.failures.dart';

abstract class UseCaseWithCommand<Result, Command> {
  Future<Either<ApiFailures, Result>> execute(Command command);
}
