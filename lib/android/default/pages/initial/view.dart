import 'package:anesi_media_pro/common/controller/global_getters.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../common/style/color.dart';

import 'index.dart';

class InitialPage extends GetView<InitialController> {
  const InitialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    controller.onInit;
    return Scaffold(
      backgroundColor: AppColors.primaryBackground,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 140,
              height: 140,
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(12)),
                child: Image.asset(
                  imagesBox.logo,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "brand_name".tr,
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: fontsBox.font,
                  fontSize: sizes.textMedium.sp,
                  fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "slogan".tr,
              style: TextStyle(
                color: AppColors.thirdElement,
                fontFamily: fontsBox.font,
                fontSize: sizes.textSlow.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
