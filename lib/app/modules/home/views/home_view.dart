import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music/app/data/constant/assets_icon_constant.dart';
import 'package:music/app/data/constant/colors_constant.dart';
import 'package:music/app/modules/home/widgets/card_item_widget.dart.dart';
import 'package:music/app/modules/home/widgets/simmer_effect.dart';
import 'package:music/app/modules/utils/font_utils.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomeColor.backgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: SafeArea(
            child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  // helloayushidKk (121:287)
                  margin: const EdgeInsets.only(top: 30, bottom: 20),
                  child: Text(
                    'Hello Ayushi',
                    style: safeGoogleFont(
                      'Raleway',
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: CustomeColor.titleColor,
                      // color: const Color(0xff2b2b2b),
                    ),
                  ),
                ),
                SizedBox(
                  // frame48095562w5Y (121:288)
                  width: double.infinity,
                  height: 44,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: Get.width * 0.75,
                        child: TextFormField(
                          autofocus: false,
                          decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25.0),
                                  borderSide: const BorderSide(
                                    color: CustomeColor.textFieldColor,
                                  )),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide: const BorderSide(
                                  color: CustomeColor.textFieldColor,
                                ),
                              ),
                              hintText: "Search...",
                              hintStyle: safeGoogleFont(
                                'Raleway',
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                height: 3,
                                color: CustomeColor.titleColor,
                              ),
                              prefixIcon: const Icon(
                                Icons.search,
                                color: CustomeColor.textFieldColor,
                              )),

                              onChanged: (value) {
                                controller.searchMusic(value);
                              },
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      SizedBox(
                        // frame11ZWE (121:293)
                        width: 44,
                        height: 44,
                        child: Image.asset(
                          IconAssets.notificationIcon,
                          width: 44,
                          height: 44,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            GetBuilder(
              init: controller,
              initState: (_) {},
              builder: (_) {
                // returning a visibility widget that will render shimmer loading widget when music loading is true
                return Visibility(
                  visible: controller.isLoadingMusic,
                  replacement: Visibility(
                    // if music list is not empty the it will render music item else showing text "no music"
                    replacement: const Center(
                      child: Text(
                        "There is no music to play",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    visible: controller.musicList.isNotEmpty,
                    child: Flexible(
                      child: ListView.separated(
                        itemBuilder: (context, index) {
                          return MusicItemListWidget(
                            music: controller.musicList[index],
                          );
                        },
                        separatorBuilder: (context, index) {
                          return const SizedBox(
                            height: 10,
                          );
                        },
                        itemCount: controller.musicList.length,
                      ),
                    ),
                  ),
                  child: const Flexible(child: ShimmerLoadingWidget()),
                );
              },
            ),
          ],
        )),
      ),
    );
  }
}
