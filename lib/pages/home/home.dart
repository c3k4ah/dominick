import 'package:dominick/common/colors/colors.dart';
import 'package:dominick/data/image_assets.dart';
import 'package:flutter/material.dart';
import 'package:meta_seo/meta_seo.dart';
import 'package:flutter/foundation.dart';

import '../../common/utils/sizes/sizes.dart';
import 'parts/footer_v2.dart';
import 'parts/part.dart';
// ignore: unused_import
import 'parts/widgets/app_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final CustomSize _size = CustomSize();
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    // setBrowserZoom();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double textSize = ResponsiveSize.number(
      context: context,
      mobile: 10,
      tablet: 17,
      mobileLarge: 15,
      desktop: 15,
    );
    return Scaffold(
      // appBar: AppBarWidget(
      //   controller: _scrollController,
      // ),
      body: Container(
        color: const Color.fromARGB(255, 211, 115, 90),
        child: Container(
          margin:
              EdgeInsets.symmetric(horizontal: getNecessaryPadding(context)),
          width: _size.width(context),
          height: _size.height(context),
          color: primaryColor,
          child: SingleChildScrollView(
            controller: _scrollController,
            child: Column(
              children: [
                const CoverPhotoPart(),
                MyProjectPart(
                  size: Size(
                    _size.width(context),
                    _size.height(context),
                  ),
                ),
                MyParcoursPart(
                  size: Size(
                    _size.width(context),
                    _size.height(context),
                  ),
                ),
                const MyBigPart(),
                AwardPart(
                  size: Size(
                    _size.width(context),
                    _size.height(context),
                  ),
                ),
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
                  color: whiteColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Made with Flutter and Love ❤️.',
                        style: style(textSize),
                      ),
                      Text(
                        '© ${DateTime.now().year} DOMINICK . All rights reserved.',
                        style: style(textSize),
                      ),
                    ],
                  ),
                ),
                // MyFooterPart(
                //   size: Size(
                //     _size.width(context),
                //     _size.height(context),
                //   ),
                // ),
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

  TextStyle style(double textSize) => TextStyle(
        color: secondaryColor,
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

void seoConfig() {
  if (kIsWeb) {
    MetaSEO meta = MetaSEO();

    meta.author(author: 'Dominick Randriamanantena Grégroire');
    meta.description(
        description:
            'Portfolio de Dominick Randriamanantena Grégroire, Développeur Flutter Mobile');
    meta.nameContent(
        name: 'Dominick Portfolio',
        content:
            "Dominick Randriamanantena Grégroire un développeur d'application mobile avec Flutter");
    meta.ogImage(
        ogImage: 'https://avatars.githubusercontent.com/u/73609825?v=4');
    meta.keywords(
        keywords:
            'Flutter, Dart, SEO, Développeur, Dev, Mobile, Dominick, Randriamanantena, Grégroire, Mahanoro, Madagascar, Cekah');
  }
}
