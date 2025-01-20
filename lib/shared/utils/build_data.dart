import 'package:get/get.dart';

class LoadingData<T> {
  late Rx<T> data;

  LoadingData(T value) {
    data = Rx<T>(value);
    ever(loading, (bool callback) {
      isFirstFetch = true;
    });
  }

  final RxBool loading = false.obs;
  final RxBool error = false.obs;
  final RxBool loadingMore = false.obs;
  final RxBool errorMore = false.obs;
  bool isFirstFetch = false;

  void setLoading() {
    loading.value = true;
    loadingMore.value = false;
    error.value = false;
    errorMore.value = false;
  }

  void setError() {
    error.value = true;
    errorMore.value = false;
    loading.value = false;
    loadingMore.value = false;
  }

  void setLoadingPagination() {
    loading.value = false;
    loadingMore.value = true;
    error.value = false;
    errorMore.value = false;
  }

  void setErrorPagination() {
    error.value = false;
    errorMore.value = true;
    loading.value = false;
    loadingMore.value = false;
  }

  void reset() {
    error.value = false;
    errorMore.value = false;
    loading.value = false;
    loadingMore.value = false;
  }

  bool get isLoading => loading.value;

  bool get isLoadingMore => loadingMore.value;

  bool get isError => error.value;

  bool get isErrorMore => errorMore.value;

  T get value => data.value;

  set value(T value) => data.value = value;
}
