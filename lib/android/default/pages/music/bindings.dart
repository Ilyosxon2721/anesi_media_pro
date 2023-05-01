import 'package:get/get.dart';

import 'controller.dart';

class MusicBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MusicController>(() => MusicController());
  }
}
