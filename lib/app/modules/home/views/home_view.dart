import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music/app/data/constant/colors_constant.dart';
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
                    style: SafeGoogleFont(
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
                              hintStyle: SafeGoogleFont(
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
                          'assets/page-1/images/frame-11.png',
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
                return controller.isLoadingMusic
                    ? const Flexible(child: ExampleUiLoadingAnimation())
                    // ? Flexible(
                    //     child: ListView.separated(
                    //         itemBuilder: (context, index) {
                    //           return Skeleton(
                    //             height: 60,
                    //             width: MediaQuery.of(context).size.width,
                    //           );
                    //         },
                    //         separatorBuilder: (context, index) {
                    //           return const SizedBox(
                    //             height: 10,
                    //           );
                    //         },
                    //         itemCount: 10))
                    : Flexible(
                        child: ListView.separated(
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () => Get.toNamed('./play-music',
                                  arguments: {
                                    "music": controller.musicList[index]
                                  }),
                              child: Card(
                                color: CustomeColor.backgroundCardColor,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0)),
                                child: ListTile(
                                  leading: Image.asset(
                                    'assets/page-1/images/group-4-EGv.png',
                                    width: 36.14,
                                    height: 36.14,
                                  ),
                                  title: Text(
                                    controller.musicList[index].name,
                                    style: SafeGoogleFont(
                                      'Raleway',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: CustomeColor.textColor,
                                    ),
                                  ),
                                  trailing: Text(
                                    '2:48',
                                    style: SafeGoogleFont(
                                      'Inter',
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: CustomeColor.trailingColor,
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                          separatorBuilder: (context, index) {
                            return const SizedBox(
                              height: 10,
                            );
                          },
                          itemCount: controller.musicList.length,
                        ),
                      );
              },
            ),
          ],
        )),
      ),
    );
  }
}
