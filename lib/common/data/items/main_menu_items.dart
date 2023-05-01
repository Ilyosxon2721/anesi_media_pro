import 'package:anesi_media_pro/common/controller/global_getters.dart';
import 'package:anesi_media_pro/common/routes/pages.dart';
import 'package:get/get.dart';

List<Map> menuItems = [
  {
    'icon': imagesBox.musicNote,
    'title': "Music".tr,
    'route': AppPages.musicHomeScreen,
  },
  {
    'icon': imagesBox.video,
    'title': "Video".tr,
    'route': AppPages.videoHomeScreen,
  },
  {
    'icon': imagesBox.photo,
    'title': "Photo".tr,
    'route': AppPages.photoHomeScreen,
  },
  {
    'icon': imagesBox.search,
    'title': "Recognition".tr,
    'route': AppPages.audioRecogHomePage,
  },
  {
    'icon': imagesBox.console,
    'title': "Games".tr,
    'route': AppPages.gamesHomePage,
  },
  {
    'icon': imagesBox.themes,
    'title': "Themes".tr,
    'route': AppPages.themesHomePage,
  },
  {
    'icon': imagesBox.user,
    'title': "Profile".tr,
    'route': AppPages.profileHomePage,
  }
];
