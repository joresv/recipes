import 'package:dartz/dartz.dart';
import 'package:recipes_app/modules/recipes/domain/recipe.dart';
import 'package:recipes_app/modules/recipes/domain/recipe.filter.dart';
import 'package:recipes_app/shared/exceptions/api.failures.dart';
import 'package:recipes_app/shared/pagination/pagination.dart';

abstract class RecipesRepository {
  Future<Either<ApiFailures, Pagination<Recipe>>> getRecipes(RecipeFilter filter);
}