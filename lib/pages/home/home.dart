import 'package:flutter/material.dart';

import '../../core/theme/app_color.dart';
import '../../core/utils/sizes/sizes.dart';
import 'parts/footer/footer_v2.dart';
import 'parts/part.dart';
// ignore: unused_import
import 'parts/widgets/app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    final themeColor = Theme.of(context).extension<AppColors>()!;
    double textSize = ResponsiveSize.number(
      context: context,
      mobile: 10,
      tablet: 17,
      mobileLarge: 15,
      desktop: 15,
    );

    return Scaffold(
      body: Container(
        color: Colors.grey.shade900,
        child: Container(
          margin:
              EdgeInsets.symmetric(horizontal: getNecessaryPadding(context)),
          width: MediaQuery.sizeOf(context).width,
          height: MediaQuery.sizeOf(context).height,
          color: themeColor.primaryColor,
          child: SingleChildScrollView(
            controller: scrollController,
            child: Column(
              children: [
                const CoverPhotoPart(),
                const MyProjectPart(),
                const SkillsPart(),
                const MyParcoursPart(),
                const MyBigPart(),
                const AwardPart(),
                const FooterPartV2(),
                Container(
                  height: ResponsiveSize.number(
                    context: context,
                    mobile: 50,
                    tablet: 50,
                    mobileLarge: 50,
                    desktop: 50,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: ResponsiveSize.number(
                      context: context,
                      mobile: 10,
                      tablet: 50,
                      mobileLarge: 50,
                      desktop: 50,
                    ),
                  ),
                  color: themeColor.secondaryColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (MediaQuery.sizeOf(context).width > 380.0)
                        Text(
                          'Made with Flutter and Love ❤️.',
                          style: style(
                              textSize, themeColor.whiteColor ?? Colors.white),
                        ),
                      if (MediaQuery.sizeOf(context).width > 380.0)
                        const Spacer(),
                      Text(
                        '© ${DateTime.now().year} DOMINICK . All rights reserved.',
                        style: style(
                            textSize, themeColor.whiteColor ?? Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      // bottomNavigationBar: Container(
      //   height: 50,
      //   color: Colors.deepPurple,
      //   child: Center(
      //     child: Text(
      //       'width: ${MediaQuery.sizeOf(context).width} px | ${getDevice(MediaQuery.sizeOf(context))}',
      //       style: const TextStyle(
      //         color: Colors.white,
      //         fontSize: 16,
      //         fontFamily: 'Poppins',
      //       ),
      //     ),
      //   ),
      // ),
    );
  }

  TextStyle style(double textSize, Color color) => TextStyle(
        color: color,
        fontSize: textSize,
        fontWeight: FontWeight.bold,
        fontFamily: 'Product Sans',
      );
}

String getDevice(Size size) {
  if (size.width >= 1024) {
    return 'desktop';
  } else if (size.width >= 700) {
    return 'tablet';
  } else if (size.width >= 500) {
    return 'mobileLarge';
  } else {
    return 'mobile';
  }
}

double getNecessaryPadding(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;
  double myWidth = 1366;
  double padding = 0;
  double number = width / myWidth;
  String roundedString = number.toStringAsFixed(2);
  double roundedNumber = double.parse(roundedString);

  if (width > myWidth) {
    padding = (MediaQuery.sizeOf(context).width * (roundedNumber / 10));
  }
  return padding;
}
