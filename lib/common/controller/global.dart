import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:audio_session/audio_session.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class Global extends GetxController {
  late AudioSession session;
  void initAudioSession() async {
    session = await AudioSession.instance;
    session.devicesChangedEventStream.listen((event) {
      if (kDebugMode) {
        print('Devices added: ${event.devicesAdded}');
      }
      if (kDebugMode) {
        print('Devices removed: ${event.devicesRemoved}');
      }
    });
  }

  void audioPlayerSetup() {
    AssetsAudioPlayer.setupNotificationsOpenAction((notification) {
      return true;
    });
    AssetsAudioPlayer.addNotificationOpenAction((notification) {
      //custom action
      return true; //true : handled, does not notify others listeners
      //false : enable others listeners to handle it
    });
  }

  @override
  void onInit() {
    initAudioSession();
    audioPlayerSetup();
    super.onInit();
  }
}
