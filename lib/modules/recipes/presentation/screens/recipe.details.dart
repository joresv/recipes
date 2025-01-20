import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recipes_app/modules/recipes/domain/recipe.dart';

class RecipeDetails extends StatelessWidget {
  const RecipeDetails({super.key, required this.recipe});
  final Recipe recipe;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
              recipe.image,
              height: 400,
              width: Get.width,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          recipe.name,
                          style: Get.textTheme.bodyLarge?.copyWith(
                            fontSize: 22,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 1),
                        child: Text.rich(
                          TextSpan(children: [
                            WidgetSpan(
                              child: Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                            ),
                            TextSpan(
                              text: '${recipe.rating}(${recipe.reviewCount})',
                            )
                          ]),
                          style: TextStyle(fontSize: 14),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Ingredients',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ...recipe.ingredients.map((ingredient) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('- $ingredient'),
                    );
                  }),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Instructions',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ...recipe.instructions.map((ingredient) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('- $ingredient'),
                    );
                  }),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
