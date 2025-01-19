import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:receip_app/modules/recipes/presentation/controllers/home.controller.dart';
import 'package:receip_app/modules/recipes/presentation/screens/recipes.list.screen.dart';

import '../../../config.dart';
import '../routes/routes.dart';

class EnvironmentsBadge extends StatelessWidget {
  final Widget child;
  EnvironmentsBadge({required this.child});
  @override
  Widget build(BuildContext context) {
    var env = ConfigEnvironments.getEnvironments()['env'];
    return env != Environments.PRODUCTION
        ? Banner(
            location: BannerLocation.topStart,
            message: env!,
            color: env == Environments.QAS ? Colors.blue : Colors.purple,
            child: child,
          )
        : SizedBox(child: child);
  }
}

class Nav {
  static List<GetPage> routes = [
    GetPage(
      name: Routes.RECIPES,
      page: () => const RecipesListScreen(),
      binding: RecipesControllerBinding(),
    ),
  ];
}
