import 'package:bamboo/foundation/breakpoint.dart';

import 'package:flutter/material.dart';
import 'package:theme_provider/theme_provider.dart';

import 'core/theme/app_theme.dart';
import 'pages/home/home.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    ApplicationTheme appTheme = ApplicationTheme(context);
    return BambooBreakPoint(
      mobile: 576,
      tablet: 768,
      desktop: 1024,
      child: ThemeProvider(
        themes: [
          AppTheme(
            id: 'dark_theme',
            description: 'theme de couleur orange',
            data: appTheme.darkTheme,
          ),
          AppTheme(
            id: 'orange_theme',
            description: 'theme de couleur orange',
            data: appTheme.orangeTheme,
          ),
          AppTheme(
            id: 'blue_theme',
            description: 'theme de couleur orange',
            data: appTheme.blueTheme,
          ),
          AppTheme(
            id: 'green_theme',
            description: 'theme de couleur orange',
            data: appTheme.greenTheme,
          ),
          AppTheme(
            id: 'brown_theme',
            description: 'theme de couleur orange',
            data: appTheme.brownTheme,
          ),
          AppTheme(
            id: 'purple_theme',
            description: 'theme de couleur orange',
            data: appTheme.purlpleTheme,
          ),
        ],
        child: ThemeConsumer(
          child: Builder(
            builder: (themeContext) {
              return MaterialApp(
                title: 'DOMINICK',
                debugShowCheckedModeBanner: false,
                theme: ThemeProvider.themeOf(themeContext).data,
                home: const HomePage(),
              );
            },
          ),
        ),
      ),
    );
  }
}
