import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music/app/data/constant/colors_constant.dart';
import 'package:music/app/modules/playMusic/widgets/animate_girl.dart';
import 'package:music/app/modules/playMusic/widgets/building_shadow.dart';
import 'package:music/app/modules/utils/font_utils.dart';

import '../controllers/play_music_controller.dart';
import '../widgets/background_image_animation.dart';
import '../widgets/bottom_container.dart';

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
              const BackgroundImageAnimationWidget(),

              const BuildingShadowWidget(),

              const AnimationForGirlWidget(),

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
                      style: safeGoogleFont(
                        'Nunito',
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                        height: 1.3,
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
                      style: safeGoogleFont(
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
                  child: GetBuilder(
                    init: controller,
                    initState: (_) {},
                    builder: (_) {
                      return GestureDetector(
                        onTap: () => controller.toggleIsExpanded(),
                        child: BottomMusicControllWidget(
                          isExpanded: controller.isExpanded,
                        ),
                      );
                    },
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
