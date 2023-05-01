import 'package:get/get.dart';

import 'controller.dart';

class ThemesBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ThemesController>(() => ThemesController());
  }
}
