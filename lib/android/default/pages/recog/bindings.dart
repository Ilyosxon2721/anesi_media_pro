import 'package:get/get.dart';

import 'controller.dart';

class RecogBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RecogController>(() => RecogController());
  }
}
