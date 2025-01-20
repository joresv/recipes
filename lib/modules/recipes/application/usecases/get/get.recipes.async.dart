import 'package:dartz/dartz.dart';
import 'package:recipes_app/modules/recipes/domain/recipe.dart';
import 'package:recipes_app/modules/recipes/domain/recipe.filter.dart';
import 'package:recipes_app/modules/recipes/domain/recipes.repository.dart';
import 'package:recipes_app/shared/domain/usecases/use.case.with.command.dart';
import 'package:recipes_app/shared/exceptions/api.failures.dart';
import 'package:recipes_app/shared/pagination/pagination.dart';

class GetRecipesAsync extends UseCaseWithCommand<Pagination<Recipe>, RecipeFilter>{
  final RecipesRepository repo;
  GetRecipesAsync(this.repo);

  @override
  Future<Either<ApiFailures, Pagination<Recipe>>> execute(RecipeFilter command) {
    return repo.getRecipes(command);
  }
}