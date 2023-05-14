import 'package:dominick/common/colors/colors.dart';
import 'package:flutter/material.dart';

import 'pages/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DOMINICK',
      debugShowCheckedModeBanner: false,
      //debugShowMaterialGrid: true,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: secondaryColor),
        fontFamily: 'FloPro',
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
