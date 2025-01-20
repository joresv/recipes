import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recipes_app/modules/recipes/application/usecases/get/get.recipes.async.dart';
import 'package:recipes_app/modules/recipes/domain/recipe.dart';
import 'package:recipes_app/modules/recipes/domain/recipe.filter.dart';
import 'package:recipes_app/modules/recipes/domain/recipes.repository.dart';
import 'package:recipes_app/shared/domain/usecases/run_usecase.dart';
import 'package:recipes_app/shared/enums/RequestOrder.dart';
import 'package:recipes_app/shared/pagination/pagination.dart';
import 'package:recipes_app/shared/utils/build_data.dart';

class RecipesControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RecipesController>(
      () => RecipesController(),
    );
  }
}

class RecipesController extends GetxController {
  final RecipesRepository repo = Get.find();
  final recipes = LoadingData<Pagination<Recipe>>(Pagination.empty());
  final scrollController = ScrollController();
  final query = ''.obs;
  final requestOrder = RequestOrder.asc.obs;
  final language = 'en'.obs;

  @override
  void onInit() {
    super.onInit();
    handleGetRecipes();
    scrollController.addListener(() {
      if (scrollController.position.pixels >=
          scrollController.position.maxScrollExtent - 100) {
        handlePaginateRecipes();
      }
    });

    debounce(query, (query) {
      handleGetRecipes();
    });

    ever(requestOrder, (o){
      handleGetRecipes();
    });
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void handlePaginateRecipes() {
    final hasNextPage =
        recipes.data.value.total != recipes.data.value.data.length;
    if (!hasNextPage || recipes.isLoadingMore) return;
    handleGetRecipes(recipes.data.value.currentPage + 1);
  }

  void handleGetRecipes([int page = 1]) {
    RunUseCase(
      useCase: GetRecipesAsync(repo).execute(RecipeFilter(
        page: page,
        limit: 10,
        query: query.value,
        order: requestOrder.value,
      )),
      builder: recipes,
    ).execute(
      loadingMore: page > 1,
      onSuccess: (data) {
        if (page > 1) {
          recipes.value.merge(data);
          return;
        }
        recipes.value = data;
      },
      onError: (value) {
        print(value);
      },
    );
  }

  void handleSortRecipes() {
    if(requestOrder.value == RequestOrder.asc){
      requestOrder.value = RequestOrder.desc;
      return;
    }
    requestOrder.value = RequestOrder.asc;
  }

  void handleChangeLanguage() {
    if(language.value == 'en'){
      language.value = 'fr';
    }else{
      language.value = 'en';
    }
    Get.updateLocale(Locale(language.value));
  }
}
