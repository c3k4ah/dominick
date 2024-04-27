import 'package:bamboo/foundation/breakpoint.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:meta_seo/meta_seo.dart';
import 'package:flutter/foundation.dart';
import 'core/theme/app_theme.dart';
import 'pages/home/home.dart';

void main() {
  if (kIsWeb) {
    MetaSEO().config();
  }
  runApp(
    DevicePreview(
      enabled: false,
      builder: (context) => const MyApp(), // Wrap your app
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    AppTheme appTheme = AppTheme(context);
    return BambooBreakPoint(
      mobile: 576,
      tablet: 768,
      desktop: 1024,
      child: MaterialApp(
        title: 'DOMINICK',
        debugShowCheckedModeBanner: false,
        theme: appTheme.greenTheme,
        home: const HomePage(),
      ),
    );
  }
}
