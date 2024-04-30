import 'package:flutter/material.dart';

import 'package:scroll_vanisher/scroll_vanisher.dart';

import 'package:unicons/unicons.dart';

import '../../../../core/theme/app_color.dart';

class FloatingColorBtt extends StatelessWidget {
  final ScrollController controller;
  const FloatingColorBtt({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    final themeColor = Theme.of(context).extension<AppColors>()!;
    return ScrollVanisher(
      controller: controller,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        // child: SpeedDial(
        //   buttonSize: const Size(40, 40),
        //   childMargin:const EdgeInsets.symmetric(horizontal: 10),
        //   overlayColor: Colors.black,
        //   childrenButtonSize: const Size(40, 50),
        //   backgroundColor: themeColor.secondaryColor,
        //   openCloseDial: isDialOpen,
        //   onPress: () {
        //     isDialOpen.value = !isDialOpen.value;
        //   },
        //   children: [
        //     childDial(
        //       color: const Color(0xffFE5944),
        //       themeId: 'orange_theme',
        //       title: 'Theme Orange',
        //     ),
        //     childDial(
        //       color: const Color(0xff537EC5),
        //       themeId: 'blue_theme',
        //       title: 'Theme bleu',
        //     ),
        //     childDial(
        //       color: const Color(0xff222831),
        //       themeId: 'dark_theme',
        //       title: 'Theme sombre',
        //     ),
        //     childDial(
        //       color: const Color(0xff4E9F3D),
        //       themeId: 'green_theme',
        //       title: 'Theme verte',
        //     ),
        //     childDial(
        //       color: const Color(0xff3E3232),
        //       themeId: 'brown_theme',
        //       title: 'Theme brun',
        //     ),
        //     childDial(
        //       color: Colors.purple,
        //       themeId: 'purple_theme',
        //       title: 'Theme violet',
        //     ),
        //   ],
        //   child: Icon(
        //     UniconsLine.palette,
        //     color: themeColor.tertioColor,
        //   ),
        // ),
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: themeColor.secondaryColor,
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          child: Icon(
            UniconsLine.setting,
            color: themeColor.tertioColor,
          ),
        ),
      ),
    );
  }
}
