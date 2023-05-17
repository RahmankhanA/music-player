// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music/app/data/constant/assets_icon_constant.dart';
import 'package:music/app/data/constant/colors_constant.dart';

import 'package:music/app/data/models/music_model.dart';
import 'package:music/app/modules/utils/font_utils.dart';

class MusicItemListWidget extends StatelessWidget {
  final MusicModel music;
  const MusicItemListWidget({
    Key? key,
    required this.music,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.toNamed('./play-music',
          arguments: {"music": music}),
      child: Card(
        color: CustomeColor.backgroundCardColor,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: ListTile(
          leading: Image.asset(
            IconAssets.playIcon,
            width: 36.14,
            height: 36.14,
          ),
          title: Text(
            music.name,
            style: safeGoogleFont(
              'Raleway',
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: CustomeColor.textColor,
            ),
          ),
          trailing: Text(
            '2:48',
            style: safeGoogleFont(
              'Inter',
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: CustomeColor.trailingColor,
            ),
          ),
        ),
      ),
    );
  }
}
