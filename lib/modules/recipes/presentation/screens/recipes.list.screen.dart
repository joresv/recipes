import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:receip_app/generated/locales.g.dart';
import 'package:receip_app/shared/components/inputs/input.search.dart';
import 'package:receip_app/shared/helpers/app.constants.dart';

class RecipesListScreen extends StatelessWidget {
  const RecipesListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: AppConstants.padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SafeArea(
              child: Text(
                LocaleKeys.findBestRecipeForCooking.tr,
                style: Get.textTheme.bodyLarge?.copyWith(
                  fontSize: 30,
                ),
              ),
            ),
            InputSearch()
          ],
        ),
      ),
    );
  }
}
