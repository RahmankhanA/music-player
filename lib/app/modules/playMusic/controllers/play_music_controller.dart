// import 'package:audioplayers/audioplayers.dart';
import 'dart:developer';

import 'package:get/get.dart';
import 'package:just_audio/just_audio.dart';
import 'package:music/app/data/models/music_model.dart';

class PlayMusicController extends GetxController {
  late MusicModel musicModel;

  AudioPlayer player = AudioPlayer();

  @override
  void onInit() {
    super.onInit();

    musicModel = Get.arguments['music'];
   
    playMusic();
  }

  @override
  void onClose() {
    player.dispose();
    super.onClose();
  }

  void playMusic() async {
    try {
      log(musicModel.audioUrl);

      await player.setUrl(musicModel.audioUrl);
      log(player.duration.toString());
      await player.play();
      log("playing...");
      musicModel.isPlaying = true;
          update();
    } catch (err) {
      log("error: $err");
    }

  }

  void pauseMusic() async {
    try {
      await player.pause();
      log("pausing...");
      musicModel.isPlaying = false;
      update();
    } catch (err) {
      log("error: $err");
    }
    // player.pause();
    // update();
  }

  void resumeMusic() async {
    try {
      // player.duration
      await player.play();
      log("resume...");
      musicModel.isPlaying = true;
       update();
    } catch (err) {
      log("error: $err");
    }
    // player.pause();

  }
}
