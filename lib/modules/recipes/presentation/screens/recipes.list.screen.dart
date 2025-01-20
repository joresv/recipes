import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recipes_app/generated/locales.g.dart';
import 'package:recipes_app/modules/recipes/presentation/components/recipe.component.dart';
import 'package:recipes_app/modules/recipes/presentation/controllers/recipes.controller.dart';
import 'package:recipes_app/shared/components/inputs/input.search.dart';
import 'package:recipes_app/shared/helpers/app.constants.dart';

class RecipesListScreen extends GetView<RecipesController> {
  const RecipesListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(AppConstants.padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SafeArea(
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      LocaleKeys.findBestRecipeForCooking.tr,
                      style: Get.textTheme.bodyLarge?.copyWith(
                        fontSize: 30,
                      ),
                    ),
                  ),
                  Obx(
                    ()=> IconButton(
                      onPressed: controller.handleChangeLanguage,
                      icon: Text(controller.language.value.toUpperCase()),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: InputSearch(
                    onChanged: controller.query.call,
                  ),
                ),
                IconButton(
                  onPressed: controller.handleSortRecipes,
                  icon: Icon(Icons.filter_list_rounded),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
                child: Obx(
              () => controller.recipes.isLoading
                  ? Center(
                      child: CircularProgressIndicator(),
                    )
                  : ListView.builder(
                      controller: controller.scrollController,
                      padding: EdgeInsets.only(top: 0),
                      itemCount: controller.recipes.data.value.data.length,
                      itemBuilder: (context, index) {
                        final recipe =
                            controller.recipes.data.value.data[index];
                        return Column(
                          children: [
                            RecipeComponent(recipe: recipe),
                            Obx(
                              () => Visibility(
                                visible: index ==
                                        controller.recipes.data.value.data
                                                .length -
                                            1 &&
                                    controller.recipes.isLoadingMore,
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 100,
                                  child: CircularProgressIndicator(),
                                ),
                              ),
                            )
                          ],
                        );
                      },
                    ),
            ))
          ],
        ),
      ),
    );
  }
}
