import 'package:anesi_media_pro/common/controller/global_getters.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';

import '../../../../common/data/items/main_menu_items.dart';
import '../../../../common/style/color.dart';

import 'index.dart';

class MainPage extends GetView<MainController> {
  const MainPage({Key? key}) : super(key: key);
  Widget _buildGrid() {
    return GridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 15,
      crossAxisSpacing: 15,
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      children: menuItems
          .map(
            (e) => ElevatedButton(
              onPressed: () {
                Get.toNamed(e['route']);
                // print(e['route']);
                // if (e['route'] == 'musicHomePage') {
                //   Navigator.pushNamedAndRemoveUntil(
                //       context, e['route'], (route) => false);
                // } else {
                //   Navigator.pushNamed(context, e['route']);
                // }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primaryElement,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
              ),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset(e['icon']),
                  ),
                  Text(
                    e['title'],
                    style: TextStyle(
                        color: AppColors.thirdElement,
                        fontSize: sizes.textSmall.sp,
                        fontFamily: fontsBox.font,
                        fontWeight: FontWeight.w600),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              ),
            ),
          )
          .toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: _buildGrid(),
      ),
    );
  }
}
