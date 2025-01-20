import 'package:get/get.dart';
import 'package:recipes_app/modules/recipes/domain/recipes.repository.dart';
import 'package:recipes_app/modules/recipes/infrastructure/repo/http.recipes.repository.dart';
import 'package:recipes_app/shared/provider/infra/dio/http.dio.provider.dart';

class AppDependencies {
  AppDependencies._();

  static Future<void> init() async {
    Get.lazyPut<RecipesRepository>(
        () => HttpRecipesRepository(HttpDioProvider()));
  }
}
