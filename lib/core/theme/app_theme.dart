import 'package:flutter/material.dart';

import 'app_color.dart';

class AppTheme {
  final BuildContext context;
  AppTheme(this.context);

  AppColors colors(context) => Theme.of(context).extension<AppColors>()!;

  ThemeData get darkTheme => ThemeData(
        fontFamily: 'Aura',
        useMaterial3: true,
        extensions: const <ThemeExtension<AppColors>>[
          AppColors(
            secondaryColor: Color(0xff222831),
            primaryColor: Color(0xff31363F),
            tertioColor: Color(0xfff1c40f),
            whiteColor: Color(0xffFFFFFF),
          )
        ],
      );

  ThemeData get orangeTheme => ThemeData(
        fontFamily: 'Aura',
        useMaterial3: true,
        extensions: const <ThemeExtension<AppColors>>[
          AppColors(
            secondaryColor: Color(0xffe34c3b),
            primaryColor: Color(0xffFE5944),
            tertioColor: Color(0xffFFD340),
            whiteColor: Color(0xffFFFFFF),
          )
        ],
      );

  ThemeData get blueTheme => ThemeData(
        fontFamily: 'Aura',
        useMaterial3: true,
        extensions: const <ThemeExtension<AppColors>>[
          AppColors(
            secondaryColor: Color(0xff537EC5),
            primaryColor: Color(0xff293A80),
            tertioColor: Color(0xffFFE194),
            whiteColor: Color(0xffFFFFFF),
          )
        ],
      );

  ThemeData get greenTheme => ThemeData(
        fontFamily: 'Aura',
        useMaterial3: true,
        extensions: const <ThemeExtension<AppColors>>[
          AppColors(
            secondaryColor: Color(0xff191A19),
            primaryColor: Color(0xff1E5128),
            tertioColor: Color(0xff4E9F3D),
            whiteColor: Color(0xffD8E9A8),
          )
        ],
      );

  ThemeData get brownTheme => ThemeData(
        fontFamily: 'Aura',
        useMaterial3: true,
        extensions: const <ThemeExtension<AppColors>>[
          AppColors(
            secondaryColor: Color(0xff3E3232),
            primaryColor: Color(0xff503C3C),
            tertioColor: Color(0xffA87C7C),
            whiteColor: Color(0xffD8E9A8),
          )
        ],
      );

  ThemeData get purlpleTheme => ThemeData(
        fontFamily: 'Aura',
        useMaterial3: true,
        extensions: const <ThemeExtension<AppColors>>[
          AppColors(
            secondaryColor: Color(0xff80558C),
            primaryColor: Color(0xffAF7AB3),
            tertioColor: Color(0xffCBA0AE),
            whiteColor: Color(0xffD8E9A8),
          )
        ],
      );
}
