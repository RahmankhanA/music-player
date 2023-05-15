import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music/app/data/constant/colors_constant.dart';
import 'package:music/app/modules/playMusic/widgets/playing_animation.dart';
import 'package:music/app/modules/utils/font_utils.dart';

import '../controllers/play_music_controller.dart';

class PlayMusicView extends GetView<PlayMusicController> {
  const PlayMusicView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    log(controller.player.toString());
    return Scaffold(
      backgroundColor: CustomeColor.backgroundColor,
      body: SafeArea(
        child: SizedBox(
          height: Get.height,
          child: Stack(
            children: [
              Positioned(
                // bgcolorNQe (1:77)
                left: 0,
                top: 0,
                child: Align(
                  child: SizedBox(
                    // width: Get.width ,
                    height: 523.84,
                    child: Image.asset(
                      'assets/page-1/images/bg-color.png',
                      width: Get.width,
                      height: 523.84,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
              ),
              Positioned(
                // bgtdt (1:78)
                left: 20,
                top: 20,
                child: Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    // width: 374.77 ,
                    height: 523.84,
                    child: Image.asset(
                      'assets/page-1/images/bg.png',
                      // width: 374.77 ,
                      height: 523.84,
                    ),
                  ),
                ),
              ),
              Positioned(
                // shadowfWE (1:76)
                left: 14.1579589844,
                top: 685.4141540527,
                child: Align(
                  child: SizedBox(
                    width: 380,
                    height: 35,
                    child: Image.asset(
                      'assets/page-1/images/shadow-Mu8.png',
                      // width: 380 ,
                      // height: 35 ,
                    ),
                  ),
                ),
              ),
              Positioned(
                // girlzwp (1:147)
                left: 60,
                // left: 44.1408691406,
                top: 430,
                child: SizedBox(
                  width: 278.99,
                  height: 315.64,
                  child: Stack(
                    children: [
                      Positioned(
                        // vqU (1:148)
                        left: 1.6647949219,
                        top: 0,
                        child: SizedBox(
                          width: 277.33,
                          height: 303.98,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // autogroupzpjz39Q (RsSobxtWkLjtRqmyoZpJz)
                                margin: const EdgeInsets.fromLTRB(
                                    16.66, 0, 0, 41.64),
                                padding: const EdgeInsets.fromLTRB(
                                    94.74, 15.41, 98.15, 15.41),
                                height: 249.01,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                      'assets/page-1/images/girl-bg-zML.png',
                                    ),
                                  ),
                                ),
                                child: Align(
                                  // group283Kci (1:194)
                                  alignment: Alignment.topCenter,
                                  child: SizedBox(
                                    width: 67.78,
                                    height: 53.67,
                                    child: Image.asset(
                                      'assets/page-1/images/group-283-W7g.png',
                                      width: 67.78,
                                      height: 53.67,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                // rectangle129Rfk (1:149)
                                width: 6.66,
                                height: 13.33,
                                decoration: const BoxDecoration(
                                  color: Color(0xffff5c5c),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(3.33128),
                                    topRight: Radius.circular(3.33128),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        // jRY (1:200)
                        left: 0,
                        top: 64.1290588379,
                        child: Align(
                          child: SizedBox(
                            width: 156.57,
                            height: 251.51,
                            child: Image.asset(
                              'assets/page-1/images/-1GA.png',
                              width: 156.57,
                              height: 251.51,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                // thejourneybeginsinsidedmp (1:203)
                left: 96.5003662109,
                top: 119.0021362305,
                child: Align(
                  child: SizedBox(
                    width: 183,
                    height: 78,
                    child: Text(
                      'THE JOURNEY BEGINS INSIDE',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont(
                        'Nunito',
                        fontSize: 29.9999980927,
                        fontWeight: FontWeight.w600,
                        height: 1.2999999555,
                        color: const Color(0xff132d84),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // staysasfehWn (1:204)
                left: 139.0004272461,
                top: 85.0021362305,
                child: Align(
                  child: SizedBox(
                    width: 98,
                    height: 26,
                    child: Text(
                      '#STAYSASFE',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont(
                        'Nunito',
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        height: 1.3,
                        color: const Color(0xffe7980c),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 10,
                left: 30,
                child: Container(
                  width: 360,
                  height: 60,
                  // color: Colors.white,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      )),
                  child: GestureDetector(
                    onTap: () {
                      // Get.to(() => const MusicPlayingAnimation());
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          'assets/page-1/images/track.png',
                          width: 60.72,
                          height: 60.82,
                        ),
                        const SizedBox(width: 200, child: MusicPlayerScreen()),
                        GestureDetector(
                          onTap: () {
                            log('is music playing : ${controller.musicModel.isPlaying}');
                            if (controller.musicModel.isPlaying) {
                              controller.pauseMusic();
                            } else {
                              controller.resumeMusic();
                            }
                          },
                          child: Image.asset(
                            'assets/page-1/images/pause.png',
                            width: 60.72,
                            height: 60.82,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
