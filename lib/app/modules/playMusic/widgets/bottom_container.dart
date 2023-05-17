// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music/app/data/constant/assets_icon_constant.dart';
import 'package:music/app/modules/playMusic/controllers/play_music_controller.dart';
import 'package:music/app/modules/playMusic/widgets/image_rotate.dart';
import 'package:music/app/modules/playMusic/widgets/playing_animation.dart';
import 'package:music/app/modules/utils/font_utils.dart';

class BottomMusicControllWidget extends StatefulWidget {
  final bool isExpanded;
  const BottomMusicControllWidget({
    Key? key,
    required this.isExpanded,
  }) : super(key: key);

  @override
  State<BottomMusicControllWidget> createState() =>
      _BottomMusicControllWidgetState();
}

class _BottomMusicControllWidgetState extends State<BottomMusicControllWidget> {
  late PlayMusicController playMusicController;
  @override
  void initState() {
    super.initState();
    playMusicController=Get.find<PlayMusicController>();
  }
  @override
  Widget build(BuildContext context) {
    return AnimatedSize(
      duration: const Duration(seconds: 2),
      curve: Curves.easeInOut,
      child: AnimatedContainer(
        duration: const Duration(seconds: 2),
        child: widget.isExpanded ? _extandedBottomBar() : _normalBottomBar(),
      ),
    );
  }

  Widget _normalBottomBar() {
    return Container(
      width: 360,
      height: 60,
      // color: Colors.white,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const ImageRotationWidget(),
          const SizedBox(width: 200, child: MusicPlayerScreen()),
          Image.asset(
            IconAssets.pauseIcon,
            width: 60.72,
            height: 60.82,
          ),
        ],
      ),
    );
  }

  Widget _extandedBottomBar() {
    return Container(
        width: 360,
        height: MediaQuery.of(context).size.height * 0.56,
        // color: Colors.white,
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            )),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50.0),
                  child: Image.network(
                   playMusicController.musicModel.imageUrl ,
                    width: 180,
                  ),
                ),
              ),
              // const SizedBox(
              //   height: 20,
              // ),
              Text(
                "Peacefull Soul",
                textAlign: TextAlign.center,
                style: safeGoogleFont(
                  'Nunito',
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                  height: 1.3,
                  color: const Color(0xff132d84),
                ),
              ),
              // const SizedBox(
              //   height: 20,
              // ),
              Text(
                "Malika",
                textAlign: TextAlign.center,
                style: safeGoogleFont(
                  'Nunito',
                  fontSize: 22,
                  fontWeight: FontWeight.w300,
                  height: 1.3,
                  color: const Color(0xff132d84),
                ),
              ),
              // const SizedBox(
              //   height: 20,
              // ),
              const SizedBox(
                width: 200,
                height: 40,
                child: MusicPlayerScreen(),
              ),
              // const SizedBox(
              //   height: 20,
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    IconAssets.previousIcon,
                    width: 60.72,
                    height: 60.82,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Image.asset(
                    IconAssets.pauseIcon,
                    width: 60.72,
                    height: 60.82,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Image.asset(
                    IconAssets.nextIcon,
                    width: 60.72,
                    height: 60.82,
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
