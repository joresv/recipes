import 'package:get/get.dart';

class RecipesControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RecipesController>(
          () => RecipesController(),
    );
  }
}

class RecipesController extends GetxController {

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

}
