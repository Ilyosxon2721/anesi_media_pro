import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../../android/default/pages/games/index.dart';
import '../../android/default/pages/initial/index.dart';
import '../../android/default/pages/main/index.dart';
import '../../android/default/pages/music/index.dart';
import '../../android/default/pages/photo/index.dart';
import '../../android/default/pages/profile/index.dart';
import '../../android/default/pages/recog/index.dart';
import '../../android/default/pages/themes/index.dart';
import '../../android/default/pages/video/index.dart';
import 'routes.dart';

class AppPages {
  static const initial = AppRoutes.initial;
  static const main = AppRoutes.main;
  static const musicHomeScreen = AppRoutes.musicHomeScreen;
  static const videoHomeScreen = AppRoutes.videoHomeScreen;
  static const photoHomeScreen = AppRoutes.photoHomeScreen;
  static const audioRecogHomePage = AppRoutes.audioRecogHomePage;
  static const gamesHomePage = AppRoutes.gamesHomePage;
  static const profileHomePage = AppRoutes.profileHomePage;
  static const themesHomePage = AppRoutes.themesHomePage;
  static final RouteObserver<Route> observer = RouteObservers();
  static List<String> history = [];

  static final List<GetPage> routes = [
    // about boot up the app
    GetPage(
      name: initial,
      page: () => const InitialPage(),
      binding: InitialBinding(),
      transition: Transition.cupertino,
      transitionDuration: const Duration(milliseconds: 250),
    ),
    GetPage(
      name: main,
      page: () => const MainPage(),
      binding: MainBinding(),
      transition: Transition.cupertino,
      transitionDuration: const Duration(milliseconds: 500),
    ),
    GetPage(
      name: musicHomeScreen,
      page: () => const MusicPage(),
      binding: MusicBinding(),
      transition: Transition.cupertino,
      transitionDuration: const Duration(milliseconds: 500),
    ),
    GetPage(
      name: videoHomeScreen,
      page: () => const VideoPage(),
      binding: VideoBinding(),
      transition: Transition.cupertino,
      transitionDuration: const Duration(milliseconds: 500),
    ),
    GetPage(
      name: photoHomeScreen,
      page: () => const PhotoPage(),
      binding: PhotoBinding(),
      transition: Transition.cupertino,
      transitionDuration: const Duration(milliseconds: 500),
    ),
    GetPage(
      name: audioRecogHomePage,
      page: () => const RecogPage(),
      binding: RecogBinding(),
      transition: Transition.cupertino,
      transitionDuration: const Duration(milliseconds: 500),
    ),
    GetPage(
      name: gamesHomePage,
      page: () => const GamesPage(),
      binding: GamesBinding(),
      transition: Transition.cupertino,
      transitionDuration: const Duration(milliseconds: 500),
    ),
    GetPage(
      name: themesHomePage,
      page: () => const ThemesPage(),
      binding: ThemesBinding(),
      transition: Transition.cupertino,
      transitionDuration: const Duration(milliseconds: 500),
    ),
    GetPage(
      name: profileHomePage,
      page: () => const ProfilePage(),
      binding: ProfileBinding(),
      transition: Transition.cupertino,
      transitionDuration: const Duration(milliseconds: 500),
    ),
  ];
}
