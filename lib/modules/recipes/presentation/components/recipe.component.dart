import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recipes_app/modules/recipes/domain/recipe.dart';
import 'package:recipes_app/modules/recipes/presentation/screens/recipe.details.dart';

class RecipeComponent extends StatelessWidget {
  const RecipeComponent({super.key, required this.recipe});
  final Recipe recipe;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.to(RecipeDetails(recipe: recipe)),
      child: Container(
        margin: EdgeInsets.only(bottom: 15),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(.2),
                offset: Offset(0, 1),
              )
            ]),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.vertical(
                  top: Radius.circular(15)),
              child: Image.network(
                recipe.image,
                height: 200,
                width: Get.width,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment:
                CrossAxisAlignment.stretch,
                children: [
                  Row(
                    crossAxisAlignment:
                    CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                          recipe.name,
                          style: Get.textTheme.bodyLarge
                              ?.copyWith(),
                        ),
                      ),
                      Padding(
                        padding:
                        const EdgeInsets.only(top: 1),
                        child: Text.rich(
                          TextSpan(children: [
                            WidgetSpan(
                              child: Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                            ),
                            TextSpan(
                              text:
                              '${recipe.rating}(${recipe.reviewCount})',
                            )
                          ]),
                          style: TextStyle(fontSize: 14),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
