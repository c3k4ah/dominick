import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:scroll_vanisher/scroll_vanisher.dart';
import 'package:theme_provider/theme_provider.dart';
import 'package:unicons/unicons.dart';

import '../../../../core/theme/app_color.dart';

class FloatingColorBtt extends StatefulWidget {
  final ScrollController controller;
  const FloatingColorBtt({super.key, required this.controller});

  @override
  State<FloatingColorBtt> createState() => _FloatingColorBttState();
}

class _FloatingColorBttState extends State<FloatingColorBtt> {
  ValueNotifier<bool> isDialOpen = ValueNotifier(false);
  @override
  Widget build(BuildContext context) {
    final themeColor = Theme.of(context).extension<AppColors>()!;

    return ScrollVanisher(
      controller: widget.controller,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SpeedDial(
          buttonSize: const Size(40, 40),
          childMargin: EdgeInsets.symmetric(horizontal: 10),
          overlayColor: Colors.black,
          childrenButtonSize: const Size(40, 50),
          backgroundColor: themeColor.secondaryColor,
          openCloseDial: isDialOpen,
          onPress: () {
            isDialOpen.value = !isDialOpen.value;
          },
          children: [
            childDial(
              color: const Color(0xffFE5944),
              themeId: 'orange_theme',
              title: 'Theme Orange',
            ),
            childDial(
              color: const Color(0xff537EC5),
              themeId: 'blue_theme',
              title: 'Theme bleu',
            ),
            childDial(
              color: const Color(0xff222831),
              themeId: 'dark_theme',
              title: 'Theme sombre',
            ),
            childDial(
              color: const Color(0xff4E9F3D),
              themeId: 'green_theme',
              title: 'Theme verte',
            ),
            childDial(
              color: const Color(0xff3E3232),
              themeId: 'brown_theme',
              title: 'Theme brun',
            ),
            childDial(
              color: Colors.purple,
              themeId: 'purple_theme',
              title: 'Theme violet',
            ),
          ],
          child: Icon(
            UniconsLine.palette,
            color: themeColor.tertioColor,
          ),
        ),
        // child: FloatingActionButton(
        //   onPressed: () {},
        //   backgroundColor: themeColor.secondaryColor,
        //   materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        //   shape: RoundedRectangleBorder(
        //     borderRadius: BorderRadius.circular(50),
        //   ),
        //   child: Icon(
        //     UniconsLine.palette,
        //     color: themeColor.tertioColor,
        //   ),
        // ),
      ),
    );
  }

  SpeedDialChild childDial({
    required String title,
    required Color color,
    required String themeId,
  }) {
    return SpeedDialChild(
      label: title,
      labelStyle: const TextStyle(
        fontFamily: 'Product sans',
        fontWeight: FontWeight.bold,
      ),
      backgroundColor: color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      elevation: 0,
      child: const SizedBox(),
      onTap: () {
        ThemeProvider.controllerOf(context).setTheme(themeId);
      },
    );
  }
}
