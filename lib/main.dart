import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:recipes_app/configs/app.dependencies.dart';
import 'package:recipes_app/generated/locales.g.dart';
import 'package:recipes_app/shared/theme/app.theme.dart';

import 'shared/navigation/pages/navigation.dart';
import 'shared/navigation/routes/routes.dart';

void main() async {
  await AppDependencies.init();
  var initialRoute = await Routes.initialRoute;
  runApp(Main(initialRoute));
}

class Main extends StatelessWidget {
  final String initialRoute;
  Main(this.initialRoute);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: initialRoute,
      getPages: Nav.routes,
      translationsKeys: AppTranslation.translations,
      locale: Locale('en'),
      theme: AppTheme.light,
    );
  }
}
