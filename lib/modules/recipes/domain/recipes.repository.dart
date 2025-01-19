import 'package:dartz/dartz.dart';
import 'package:receip_app/modules/recipes/domain/recipe.dart';
import 'package:receip_app/modules/recipes/domain/recipe.filter.dart';
import 'package:receip_app/shared/exceptions/api.failures.dart';
import 'package:receip_app/shared/pagination/pagination.dart';

abstract class RecipesRepository {
  Future<Either<ApiFailures, Pagination<Recipe>>> getRecipes(RecipeFilter filter);
}