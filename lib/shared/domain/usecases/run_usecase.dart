import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:recipes_app/shared/utils/build_data.dart';

class RunUseCase<T, E> {
  final Future<Either<E, T>> useCase;
  final LoadingData<T>? builder;

  RunUseCase({
    required this.useCase,
    this.builder,
  });

  void execute({
    bool loadingMore = false,
    ValueSetter<T>? onSuccess,
    ValueSetter<E>? onError,
    VoidCallback? onFinally,
  }) {
    !loadingMore ? builder?.setLoading() : builder?.setLoadingPagination();
    useCase.then((response) {
      onFinally?.call();
      builder?.reset();
      response.fold((err) {
        loadingMore ? builder?.setErrorPagination() : builder?.setError();
        onError?.call(err);
      }, (result) {
        onSuccess?.call(result);
      });
    });
  }
}
