import 'package:dartz/dartz.dart';
import 'package:recipes_app/modules/recipes/domain/recipe.dart';
import 'package:recipes_app/modules/recipes/domain/recipe.filter.dart';
import 'package:recipes_app/modules/recipes/domain/recipes.repository.dart';
import 'package:recipes_app/modules/recipes/infrastructure/routes/recipes.api.routes.dart';
import 'package:recipes_app/shared/exceptions/api.failures.dart';
import 'package:recipes_app/shared/pagination/pagination.dart';
import 'package:recipes_app/shared/provider/domain/http.provider.dart';

class HttpRecipesRepository implements RecipesRepository {
  final HttpProvider http;
  HttpRecipesRepository(this.http);

  @override
  Future<Either<ApiFailures, Pagination<Recipe>>> getRecipes(
      RecipeFilter filter) async {
    try {
      final response = await http.get(
          filter.query.isNotEmpty
              ? RecipesApiRoutes.searchRecipes
              : RecipesApiRoutes.getRecipes,
          queryParameters: filter.toJson());
      response['data'] = response['recipes'];
      response['page'] = filter.page;
      return Right(Pagination.fromJson(response, Recipe.fromJson));
    } catch (e) {
      print(e);
      return Left(ApiFailures.internetError());
    }
  }
}
