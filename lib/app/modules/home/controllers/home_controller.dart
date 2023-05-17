import 'dart:convert';
import 'dart:developer';

import 'package:get/get.dart';
import 'package:music/app/data/models/music_model.dart';
import 'package:music/app/modules/services/music_service.dart';

class HomeController extends GetxController {
  // for storing the all music list
  List<MusicModel> musicList = [];

  bool isLoadingMusic = false;

  @override
  void onInit() {
    super.onInit();

    // fetching music
    fetchMusic();
  }

  fetchMusic() async {
    // making music list empty
    musicList.clear();

    // set Music loading true
    isLoadingMusic = true;

    // calling api to get music
    var res = await MusicApi().getMusicList();

    // checking that response is ok or not
    if (res.statusCode == 200) {
      try {
        //  decoding our response
        var data = json.decode(res.data)['list'];

        // adding all music in music list
        for (var element in data) {
          musicList.add(MusicModel.fromMap(element));
        }
      } catch (err) {
        log("erro is : $err");
      }
    }
    // set Music loading false
    isLoadingMusic = false;
    // updating ui
    update();
  }
}
