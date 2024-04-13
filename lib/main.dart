import 'package:bamboo/foundation/breakpoint.dart';
import 'package:device_preview/device_preview.dart';
import 'package:dominick/common/colors/colors.dart';
import 'package:flutter/material.dart';

import 'pages/home/home.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const MyApp(), // Wrap your app
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BambooBreakPoint(
      mobile: 576,
      tablet: 768,
      desktop: 1024,
      child: MaterialApp(
        title: 'DOMINICK',
        debugShowCheckedModeBanner: false,
        //debugShowMaterialGrid: true,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: secondaryColor),
          fontFamily: 'Aura',
          useMaterial3: true,
        ),
        home: const HomePage(),
      ),
    );
  }
}
