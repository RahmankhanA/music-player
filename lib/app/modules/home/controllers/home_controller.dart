import 'dart:convert';
import 'dart:developer';

import 'package:get/get.dart';
import 'package:music/app/data/models/music_model.dart';
import 'package:music/app/modules/services/music_service.dart';

class HomeController extends GetxController {
  List<MusicModel> musicList = [];
  bool isLoadingMusic = false;

  @override
  void onInit() {
    super.onInit();
    fetchMusic();
  }

  fetchMusic() async {
    musicList.clear();
    isLoadingMusic = true;
    var res = await MusicApi().getMusicList();
    if (res.statusCode == 200) {
      // log(res.toString());
      try {
        var data = json.decode(res.data)['list'];
        // log(data[0].toString());
        for (var element in data) {
          musicList.add(MusicModel.fromMap(element));
          // log(element.toString());
        }
      } catch (err) {
        log("erro is : $err");
      }
    }
    isLoadingMusic = false;
    await Future.delayed(const Duration(seconds: 2));
    update();
    // log(res['list'].toString());
  }
}
