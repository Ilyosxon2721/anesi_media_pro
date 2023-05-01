import 'package:anesi_media_pro/common/controller/global_getters.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';

import '../../../../common/data/items/main_menu_items.dart';
import '../../../../common/style/color.dart';

import 'index.dart';

class ThemesPage extends GetView<ThemesController> {
  const ThemesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Text("Themes"),
        ));
  }
}
