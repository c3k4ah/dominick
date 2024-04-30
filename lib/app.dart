import 'package:flutter/material.dart';

import 'core/theme/app_theme.dart';
import 'pages/home/home.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    ApplicationTheme appTheme = ApplicationTheme(context);
    return MaterialApp(
      title: 'DOMINICK',
      debugShowCheckedModeBanner: false,
      theme: appTheme.darkTheme,
      home: const HomePage(),
    );
    // return ThemeProvider(
    //   themes: [
    //     AppTheme(
    //       id: 'dark_theme',
    //       description: 'theme de couleur orange',
    //       data: appTheme.darkTheme,
    //     ),
    //     AppTheme(
    //       id: 'orange_theme',
    //       description: 'theme de couleur orange',
    //       data: appTheme.orangeTheme,
    //     ),
    //     AppTheme(
    //       id: 'blue_theme',
    //       description: 'theme de couleur orange',
    //       data: appTheme.blueTheme,
    //     ),
    //     AppTheme(
    //       id: 'green_theme',
    //       description: 'theme de couleur orange',
    //       data: appTheme.greenTheme,
    //     ),
    //     AppTheme(
    //       id: 'brown_theme',
    //       description: 'theme de couleur orange',
    //       data: appTheme.brownTheme,
    //     ),
    //     AppTheme(
    //       id: 'purple_theme',
    //       description: 'theme de couleur orange',
    //       data: appTheme.purlpleTheme,
    //     ),
    //   ],
    //   child: ThemeConsumer(
    //     child: Builder(
    //       builder: (themeContext) {
    //         return MaterialApp(
    //           title: 'DOMINICK',
    //           debugShowCheckedModeBanner: false,
    //           theme: ThemeProvider.themeOf(themeContext).data,
    //           home: const HomePage(),
    //         );
    //       },
    //     ),
    //   ),
    // );
  }
}
