import 'dart:async';

import 'package:anesi_media_pro/common/routes/pages.dart';
import 'package:get/get.dart';

import 'index.dart';

class InitialController extends GetxController {
  InitialController();
  final state = InitialState();
  @override
  void onInit() {
    Timer(const Duration(seconds: 2), () => Get.toNamed(AppPages.main));
    super.onInit();
  }
}
